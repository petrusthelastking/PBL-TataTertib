<?php
// Koneksi ke database
include "database.php";

// Proses penyimpanan data form laporan
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $namaTerlapor = htmlspecialchars($_POST['NamaTerlapor']);
    $tanggal = htmlspecialchars($_POST['Tanggal']);
    $ID_Pelapor = $_POST['NIP']; 
    $jenisPelanggaran = htmlspecialchars($_POST['JenisPelanggaran']);
    $bukti = $_FILES['bukti'];

    // Dapatkan ID_Terlapor berdasarkan NamaTerlapor
    $idTerlaporQuery = "
    SELECT NIM
    FROM [PelanggaranTataTertib].[dbo].[Mahasiswa]
    WHERE Nama LIKE ?";

    $stmtTerlapor = sqlsrv_query($conn, $idTerlaporQuery, array($namaTerlapor));


    if ($stmtTerlapor === false) {
        die(print_r(sqlsrv_errors(), true));
    }

    // Ambil ID_Terlapor
    $idTerlapor = null;
    if ($row = sqlsrv_fetch_array($stmtTerlapor, SQLSRV_FETCH_ASSOC)) {
        $idTerlapor = $row['NIM'];
    } else {
        echo "Nama Terlapor tidak ditemukan!";
        exit;
    }

    // Simpan file bukti
    $uploadDir = "UploadButkiPelanggaran/";
    $fileName = time() . "_" . basename($bukti["name"]);
    $uploadFilePath = $uploadDir . $fileName;
    $id_laporan = time();

    if (move_uploaded_file($bukti["tmp_name"], $uploadFilePath)) {
        // Masukkan data ke tabel laporan
        $insertQuery = "
            INSERT INTO Laporan 
            (ID_Laporan, ID_Pelapor, ID_Dilapor, ID_Pelanggaran, TanggalDibuat, Foto_Bukti, Status) 
            VALUES (?, ?, ?, ?, GETDATE(), ?, 'Pending')
        ";
        $params = [$id_laporan, $ID_Pelapor, $idTerlapor, $jenisPelanggaran, $uploadFilePath];
        $stmt = sqlsrv_query($conn, $insertQuery, $params);

        if ($stmt === false) {
            die(print_r(sqlsrv_errors(), true));
        }

        echo "Laporan berhasil ditambahkan!";
        header("Location: ../src/Dosen/Dashboard.php");
    } else {
        echo "Gagal mengunggah file bukti.";
    }
}
?>
