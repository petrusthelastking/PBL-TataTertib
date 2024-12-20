
/****** Object:  Database [PelanggaranTataTertib]    Script Date: 25-Nov-24 14:38:23 ******/
CREATE DATABASE [PelanggaranTataTertib]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PelanggaranTataTertib', FILENAME = N'D:\SQLServer\MSSQL16.SQLEXPRESS01\MSSQL\DATA\PelanggaranTataTertib.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PelanggaranTataTertib_log', FILENAME = N'D:\SQLServer\MSSQL16.SQLEXPRESS01\MSSQL\DATA\PelanggaranTataTertib_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PelanggaranTataTertib] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PelanggaranTataTertib].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PelanggaranTataTertib] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET ARITHABORT OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PelanggaranTataTertib] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PelanggaranTataTertib] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PelanggaranTataTertib] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PelanggaranTataTertib] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PelanggaranTataTertib] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PelanggaranTataTertib] SET  MULTI_USER 
GO
ALTER DATABASE [PelanggaranTataTertib] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PelanggaranTataTertib] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PelanggaranTataTertib] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PelanggaranTataTertib] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PelanggaranTataTertib] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PelanggaranTataTertib] SET QUERY_STORE = ON
GO
ALTER DATABASE [PelanggaranTataTertib] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200)
GO
USE [PelanggaranTataTertib]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 25-Nov-24 14:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID_Admin] [int] NOT NULL,
	[Nama] [nvarchar](100) NULL,
	[Alamat] [nvarchar](255) NULL,
	[No_Tlp] [nvarchar](15) NULL,
	[Profil] [nvarchar](255) NULL,
	[Username] [nvarchar](255) NOT NULL,
	[Pw] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Admin_Username] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dosen]    Script Date: 25-Nov-24 14:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dosen](
	[NIP] [int] NOT NULL,
	[Nama] [nvarchar](100) NULL,
	[Alamat] [nvarchar](255) NULL,
	[No_Tlp] [nvarchar](15) NULL,
	[Profil] [nvarchar](255) NULL,
	[Username] [nvarchar](255) NOT NULL,
	[Pw] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NIP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Dosen_Username] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kelas]    Script Date: 25-Nov-24 14:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kelas](
	[ID_Kelas] [int] NOT NULL,
	[Nama_Kelas] [nvarchar](100) NULL,
	[ID_Prodi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Kelas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laporan]    Script Date: 25-Nov-24 14:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laporan](
	[ID_Laporan] [int] NOT NULL,
	[ID_Pelapor] [int] NULL,
	[ID_Dilapor] [int] NULL,
	[ID_Admin] [int] NULL,
	[ID_Pelanggaran] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[Sanksi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Laporan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mahasiswa]    Script Date: 25-Nov-24 14:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mahasiswa](
	[NIM] [int] NOT NULL,
	[Nama] [nvarchar](100) NULL,
	[Alamat] [nvarchar](255) NULL,
	[No_Tlp] [nvarchar](15) NULL,
	[ID_Kelas] [int] NULL,
	[Profil] [nvarchar](255) NULL,
	[Username] [nvarchar](255) NOT NULL,
	[Pw] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NIM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Mahasiswa_Username] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mata_Kuliah]    Script Date: 25-Nov-24 14:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mata_Kuliah](
	[ID_Mk] [int] NOT NULL,
	[Nama_Mk] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Mk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pelanggaran]    Script Date: 25-Nov-24 14:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelanggaran](
	[ID_Pelanggaran] [int] NOT NULL,
	[Nama_Pelanggaran] [nvarchar](100) NULL,
	[Tingkat] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Pelanggaran] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pengampu]    Script Date: 25-Nov-24 14:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pengampu](
	[NIP] [int] NOT NULL,
	[ID_Mk] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NIP] ASC,
	[ID_Mk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prodi]    Script Date: 25-Nov-24 14:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prodi](
	[ID_Prodi] [int] NOT NULL,
	[Nama_Prodi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Prodi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admin] ADD  CONSTRAINT [DF_Admin_Username]  DEFAULT ('default_username') FOR [Username]
GO
ALTER TABLE [dbo].[Admin] ADD  CONSTRAINT [DF_Admin_Pw]  DEFAULT ('default_password') FOR [Pw]
GO
ALTER TABLE [dbo].[Dosen] ADD  CONSTRAINT [DF_Dosen_Username]  DEFAULT ('default_username') FOR [Username]
GO
ALTER TABLE [dbo].[Dosen] ADD  CONSTRAINT [DF_Dosen_Pw]  DEFAULT ('default_password') FOR [Pw]
GO
ALTER TABLE [dbo].[Mahasiswa] ADD  CONSTRAINT [DF_Mahasiswa_Username]  DEFAULT ('default_username') FOR [Username]
GO
ALTER TABLE [dbo].[Mahasiswa] ADD  CONSTRAINT [DF_Mahasiswa_Pw]  DEFAULT ('default_password') FOR [Pw]
GO
ALTER TABLE [dbo].[Kelas]  WITH CHECK ADD FOREIGN KEY([ID_Prodi])
REFERENCES [dbo].[Prodi] ([ID_Prodi])
GO
ALTER TABLE [dbo].[Laporan]  WITH CHECK ADD FOREIGN KEY([ID_Admin])
REFERENCES [dbo].[Admin] ([ID_Admin])
GO
ALTER TABLE [dbo].[Laporan]  WITH CHECK ADD FOREIGN KEY([ID_Dilapor])
REFERENCES [dbo].[Mahasiswa] ([NIM])
GO
ALTER TABLE [dbo].[Laporan]  WITH CHECK ADD FOREIGN KEY([ID_Pelapor])
REFERENCES [dbo].[Mahasiswa] ([NIM])
GO
ALTER TABLE [dbo].[Laporan]  WITH CHECK ADD FOREIGN KEY([ID_Pelanggaran])
REFERENCES [dbo].[Pelanggaran] ([ID_Pelanggaran])
GO
ALTER TABLE [dbo].[Mahasiswa]  WITH CHECK ADD FOREIGN KEY([ID_Kelas])
REFERENCES [dbo].[Kelas] ([ID_Kelas])
GO
ALTER TABLE [dbo].[Pengampu]  WITH CHECK ADD FOREIGN KEY([ID_Mk])
REFERENCES [dbo].[Mata_Kuliah] ([ID_Mk])
GO
ALTER TABLE [dbo].[Pengampu]  WITH CHECK ADD FOREIGN KEY([NIP])
REFERENCES [dbo].[Dosen] ([NIP])
GO
USE [master]
GO
ALTER DATABASE [PelanggaranTataTertib] SET  READ_WRITE 
GO

CREATE TABLE Bukti_Pengerjaan (
    ID_Bukti INT PRIMARY KEY NOT NULL,
    Foto VARCHAR(255) NOT NULL,
    Deskripsi VARCHAR(255)
);
go

ADD ID_Bukti INT(15) NULL,

ALTER TABLE Laporan
    ADD CONSTRAINT FK_Bukti_Laporan FOREIGN KEY (ID_Bukti) REFERENCES Bukti_Pengerjaan(ID_Bukti);
go

ALTER TABLE Laporan
ALTER COLUMN ID_Laporan INT NULL IDENTITIY(1,1);

ALTER TABLE Laporan
ALTER COLUMN ID_Bukti INT NULL;

ALTER TABLE Laporan DROP CONSTRAINT FK_Bukti_Laporan;
ALTER TABLE Bukti_Pengerjaan DROP CONSTRAINT PK__Bukti_Pe__F91DC1C1D1F70238;

drop table Bukti_Pengerjaan


ALTER TABLE Bukti_Pengerjaan
ALTER COLUMN ID_Bukti INT NULL;

ALTER TABLE Laporan
ADD TanggalDibuat DATETIME2 DEFAULT SYSDATETIME();

ALTER TABLE Laporan
ADD TanggalDiupdate DATETIME2 DEFAULT SYSDATETIME();

CREATE TRIGGER trg_UpdateTimestamp
ON Laporan
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Laporan
    SET TanggalDiupdate = SYSDATETIME()
    WHERE ID_Laporan IN (SELECT DISTINCT ID_Laporan FROM Inserted);
END;

CREATE TABLE Banding(
	ID_Banding VARCHAR(15) PRIMARY KEY NOT NULL,
	ID_Laporan INT NOT NULL,
	NIM INT NOT NULL,
	Keterangan VARCHAR(255),
	CONSTRAINT FK_ID_Laporan FOREIGN KEY (ID_Laporan) REFERENCES Laporan(ID_Laporan),
	CONSTRAINT FK_NIM FOREIGN KEY (NIM) REFERENCES Mahasiswa(NIM)
);

insert into dbo.Prodi values(1, 'DIV Teknik Informatika')

insert into dbo.Kelas values(1, 'TI-2D', 1);

insert into dbo.Mahasiswa values(2341720, 'M Afif Al Ghifari', 'Jl. Sini', '08964523823', 1, 'Saya manusia', 'afif', 'afif');
insert into dbo.Admin values(1, 'admin', 'Jl. Sini', '08964523823', 'Saya manusia', 'admin', 'admin');

SELECT * FROM dbo.Admin
SELECT * FROM dbo.Bukti_Pengerjaan
SELECT * FROM dbo.Laporan

UPDATE Laporan SET ID_Dilapor = 2341720 WHERE ID_Laporan = 1733729585

UPDATE Laporan
SET ID_Bukti = 
WHERE ID_Laporan = 

DELETE FROM dbo.Bukti_Pengerjaan Where ID_Bukti = 1733841321 
ALTER TABLE Laporan
ADD Foto_Bukti VARCHAR(255) NULL

DELETE FROM dbo.Laporan WHERE ID_Laporan = 1733729476

SELECT m.NIM, m.Nama, k.id_Kelas, k.nama_Kelas, m.Alamat, m.No_Tlp
                                        FROM mahasiswa m
                                        JOIN Kelas k 
                                        ON m.ID_Kelas = k.ID_Kelas;

sp_help 'Laporan';
sp_help 'Dosen';

SELECT l.ID_Laporan, l.ID_Dilapor, p.ID_Pelanggaran, d.NIP, d.Nama, p.Nama_Pelanggaran, p.Tingkat 
                    FROM Laporan l
                    JOIN Pelanggaran p ON l.ID_Pelanggaran = p.ID_Pelanggaran
                    JOIN Dosen d ON l.ID_Pelapor = d.NIP
                    WHERE l.ID_Dilapor = 2341720;

SELECT l.ID_Laporan, l.ID_Dilapor, l.Sanksi, b.ID_Bukti, b.Foto, b.Deskripsi 
                    FROM Laporan l
                    JOIN Bukti_Pengerjaan b ON l.ID_Bukti = b.ID_Bukti
                    WHERE l.ID_Dilapor = 2341720

ALTER TABLE Laporan
DROP CONSTRAINT FK__Laporan__ID_Pela__52593CB8;

SELECT 
    tc.CONSTRAINT_NAME AS ForeignKeyName,
    tc.TABLE_NAME AS TableName,
    kcu.COLUMN_NAME AS ColumnName,
    ccu.TABLE_NAME AS ReferencedTable,
    ccu.COLUMN_NAME AS ReferencedColumn
FROM 
    INFORMATION_SCHEMA.TABLE_CONSTRAINTS AS tc
JOIN 
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS kcu
    ON tc.CONSTRAINT_NAME = kcu.CONSTRAINT_NAME
JOIN 
    INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE AS ccu
    ON ccu.CONSTRAINT_NAME = tc.CONSTRAINT_NAME
WHERE 
    tc.CONSTRAINT_TYPE = 'FOREIGN KEY'
    AND tc.TABLE_NAME = 'Laporan'
    AND kcu.COLUMN_NAME = 'ID_Pelapor'; -- Ganti dengan nama tabel dan kolom

ALTER TABLE Laporan
ADD CONSTRAINT FK_ID_Pelapor -- Nama constraint
FOREIGN KEY (ID_Pelapor)           -- Kolom di tabel anak
REFERENCES Dosen (NIP); -- Kolom di tabel induk


SELECT l.ID_Laporan, 
m.NIM, 
m.Nama as NamaMahasiswa, 
                            d.NIP, 
                            d.Nama as NamaDosen,
                            l.ID_Admin,
                            l.Status,
                            l.TanggalDibuat,
                            l.Sanksi,
                            p.ID_Pelanggaran, 
                            p.Nama_Pelanggaran, 
                            p.Tingkat
                            FROM Laporan l 
                            JOIN Pelanggaran p ON l.ID_Pelanggaran = p.ID_Pelanggaran
                            JOIN Mahasiswa m ON l.ID_Dilapor = m.NIM
                            JOIN Dosen d ON l.ID_Pelapor = d.NIP
                            WHERE ID_Laporan = 1733804971;