<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Admin</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="../../assets/font.css">
    <link rel="icon" href="../../assets/img/LOGO BREN.pdf.png" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="../../assets/faq-style.css">
</head>

<body class="flex">
    <?php include "Sidebar.php"; ?>
    
    <main class="w-full h-screen bg-slate-200 ml-72">
        <nav class="flex top-0 gap-10 w-full items-center justify-end px-28 py-6 bg-white">
            <button class="relative inline-flex items-center" id="NotifBtn">
                <i class="bi bi-bell text-3xl text-slate-300"></i>
                <div class="absolute inline-flex items-center justify-center w-3 h-3 bg-red-500 rounded-full -top-1 -end-1 dark:border-gray-900"></div>
            </button>
            <a href="../Dosen/Profile.php" class="size-10 rounded-full border overflow-hidden">
                <img src="../../assets/img/pp_sample.jpg" class="w-full h-full object-cover" alt="">
            </a>
        </nav>
        <section class="flex flex-col w-full px-14 py-12 gap-10">
            <h1 class="text-3xl">Dashboard</h1>
            <div class="grid grid-cols-2 gap-4">
                <div class="w-96 bg-white rounded-xl mx-auto px-6 py-3">
                    <h3 class="text-2xl mb-6">Total Pelanggaran</h3>
                    <h4 class="text-xl text-blue-600">10</h4>
                </div>
                <div class="w-96 bg-white rounded-xl mx-auto px-6 py-3">
                    <h3 class="text-2xl mb-6">Total Pelaporan</h3>
                    <h4 class="text-xl text-blue-600">10</h4>
                </div>
                <div class="w-96 bg-white rounded-xl mx-auto px-6 py-3">
                    <h3 class="text-2xl mb-6">Total Banding</h3>
                    <h4 class="text-xl text-blue-600">10</h4>
                </div>
                <div class="w-96 bg-white rounded-xl mx-auto px-6 py-3">
                    <h3 class="text-2xl mb-6">Total Keseluruhan</h3>
                    <h4 class="text-xl text-blue-600">10</h4>
                </div>
            </div>
        </section>
    </main>
</body>

</html>