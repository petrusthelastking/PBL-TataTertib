<?php
$host = "DESKTOP-5O8DG63"; // nama server\nama_instance
$connInfo = array(
    "Database" => "PelanggaranTataTertib",
);

    // Koneksi menggunakan PDO dengan driver sqlsrv
    $conn = sqlsrv_connect($host, $connInfo);

?>