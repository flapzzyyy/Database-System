-- buat database
CREATE DATABASE bandara_horizon;

-- pilih database
USE bandara_horizon;

-- DDL
-- membuat tabel-tabel + foreign key
CREATE TABLE Bandara (
   ID_Bandara INT NOT NULL PRIMARY KEY,
   Nama VARCHAR(255) NOT NULL,
   Kota VARCHAR(255) NOT NULL,
   Negara VARCHAR(255) NOT NULL,
   Kode_IATA CHAR(3) NOT NULL,
   CONSTRAINT cek_kode_iata CHECK (char_length(Kode_IATA)=3)
);

CREATE TABLE Maskapai (
   ID_Maskapai CHAR(5) NOT NULL PRIMARY KEY,
   Nama VARCHAR(255) NOT NULL,
   Negara_Asal VARCHAR(255) NOT NULL
);

CREATE TABLE Pesawat (
   ID_Pesawat CHAR(6) NOT NULL PRIMARY KEY,
   Model VARCHAR(255) NOT NULL,
   Kapasitas INT NOT NULL,
   Tahun_Produksi CHAR(4) NOT NULL,
   Status_Pesawat VARCHAR(50) NOT NULL,
   ID_Maskapai CHAR(5),
	CONSTRAINT cek_id_pesawat CHECK (ID_Pesawat REGEXP '^PK[A-Z][A-Z][A-Z][0-9]$'),
   FOREIGN KEY (ID_Maskapai) REFERENCES Maskapai(ID_Maskapai) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Penerbangan (
   ID_Penerbangan CHAR(6) NOT NULL PRIMARY KEY,
   Waktu_Keberangkatan DATETIME NOT NULL,
   Waktu_Sampai DATETIME NOT NULL,
   Status_Penerbangan VARCHAR(50) NOT NULL,
   ID_Pesawat CHAR(6),
   CONSTRAINT cek_id_penerbangan CHECK (ID_Penerbangan REGEXP '^FL[0-9][0-9][0-9][0-9]$'),
   FOREIGN KEY (ID_Pesawat) REFERENCES Pesawat(ID_Pesawat) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Bandara_Penerbangan (
   Bandara_ID INT,
   Penerbangan_ID CHAR(6),
   PRIMARY KEY (Bandara_ID, Penerbangan_ID),
	CONSTRAINT fk_bandara FOREIGN KEY (Bandara_ID) REFERENCES Bandara(ID_Bandara) ON UPDATE CASCADE ON DELETE CASCADE,
   CONSTRAINT fk_penerbangan FOREIGN KEY (Penerbangan_ID) REFERENCES Penerbangan(ID_Penerbangan) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Bagasi (
   ID_Bagasi INT NOT NULL PRIMARY KEY,
   Berat INT NOT NULL,
   Ukuran VARCHAR(5) NOT NULL,
   Warna VARCHAR(255) NOT NULL,
   Jenis VARCHAR(255) NOT NULL
);

CREATE TABLE Penumpang (
   NIK CHAR(16) NOT NULL PRIMARY KEY,
   Nama VARCHAR(255) NOT NULL,
   Tanggal_Lahir DATE NOT NULL,
   Alamat VARCHAR(255) NOT NULL,
   No_Telepon VARCHAR(13) NOT NULL,
   Jenis_Kelamin CHAR(1) NOT NULL,
   Kewarganegaraan VARCHAR(255) NOT NULL,
   ID_Bagasi INT,
   CONSTRAINT cek_nik CHECK (char_length(NIK)=16),
   CONSTRAINT cek_jenis_kelamin CHECK (Jenis_Kelamin IN ('L', 'P')),
   FOREIGN KEY (ID_Bagasi) REFERENCES Bagasi(ID_Bagasi) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Tiket (
   ID_Tiket CHAR(6) NOT NULL PRIMARY KEY,
   Nomor_Kursi CHAR(3) NOT NULL,
   Harga INT NOT NULL,
   Waktu_Pembelian DATETIME NOT NULL,
   Kelas_Penerbangan VARCHAR(50) NOT NULL,
   NIK_Penumpang CHAR(16),
   ID_Penerbangan CHAR(6),
   CONSTRAINT cek_id_tiket CHECK (ID_Tiket REGEXP '^TIK[0-9][0-9][0-9]$'),
   CONSTRAINT cek_kursi CHECK (Nomor_Kursi REGEXP '^[0-9][0-9][A-Z]$'),
   FOREIGN KEY (NIK_Penumpang) REFERENCES Penumpang(NIK) ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY (ID_Penerbangan) REFERENCES Penerbangan(ID_Penerbangan) ON UPDATE CASCADE ON DELETE CASCADE
);

-- isi data tiap tabel
INSERT INTO Bandara (ID_Bandara, Nama, Kota, Negara, Kode_IATA) 
VALUES (1, 'Soekarno-Hatta', 'Jakarta', 'Indonesia', 'CGK'),
   	 (2, 'Ngurah Rai', 'Denpasar', 'Indonesia', 'DPS'),
		 (3, 'Changi', 'Singapore', 'Singapore', 'SIN'),
   	 (4, 'Haneda', 'Tokyo', 'Japan', 'HND');

INSERT INTO Maskapai (ID_Maskapai, Nama, Negara_Asal) 
VALUES ('GA123', 'Garuda Indonesia', 'Indonesia'),
   	 ('SQ456', 'Singapore Airlines', 'Singapore'),
		 ('JL789', 'Japan Airlines', 'Japan'),
   	 ('QZ987', 'AirAsia', 'Malaysia');

INSERT INTO Pesawat (ID_Pesawat, Model, Kapasitas, Tahun_Produksi, Status_Pesawat, ID_Maskapai)
VALUES ('PKABC1', 'Boeing 737', 180, 2018, 'Aktif', 'GA123'),
  		 ('PKDEF2', 'Airbus A320', 150, 2020, 'Aktif', 'SQ456'),
    	 ('PKGHI3', 'Boeing', 250, 2019, 'Dalam Perawatan', 'JL789'),
		 ('PKJKL4', 'Airbus A330', 280, 2021, 'Aktif', 'QZ987');

INSERT INTO Penerbangan (ID_Penerbangan, Waktu_Keberangkatan, Waktu_Sampai, Status_Penerbangan, ID_Pesawat)
VALUES ('FL0001', '2024-12-15 10:00:00', '2024-12-15 12:30:00', 'Jadwal', 'PKABC1'),
   	 ('FL0002', '2024-12-16 08:00:00', '2024-12-16 10:45:00', 'Jadwal', 'PKDEF2'),
   	 ('FL0003', '2024-12-17 14:00:00', '2024-12-17 16:30:00', 'Ditunda', 'PKGHI3'),
   	 ('FL0004', '2024-12-18 18:00:00', '2024-12-18 20:30:00', 'Jadwal', 'PKJKL4');

INSERT INTO Bandara_Penerbangan (Bandara_ID, Penerbangan_ID) 
VALUES (1, 'FL0001'),
   	 (2, 'FL0002'),
   	 (3, 'FL0003'),
   	 (4, 'FL0004');

INSERT INTO Bagasi (ID_Bagasi, Berat, Ukuran, Warna, Jenis)
VALUES (1, 20, 'M', 'Hitam', 'Koper'),
   	 (2, 15, 'S', 'Merah', 'Ransel'),
   	 (3, 25, 'L', 'Biru', 'Koper'),
   	 (4, 10, 'S', 'Hijau', 'Ransel');

INSERT INTO Penumpang (NIK, Nama, Tanggal_Lahir, Alamat, No_Telepon, Jenis_Kelamin, Kewarganegaraan, ID_Bagasi)
VALUES ('3201123456789012', 'Budi Santoso', '1990-04-15', 'Jl. Merdeka No.1', '081234567890', 'L', 'Indonesia', 1),
   	 ('3302134567890123', 'Siti Aminah', '1985-08-20', 'Jl. Kebangsaan No.2', '081298765432', 'P', 'Indonesia', 2),
   	 ('3403145678901234', 'John Tanaka', '1992-12-05', 'Shibuya, Tokyo', '080123456789', 'L', 'Japan', 3),
   	 ('3504156789012345', 'Li Wei', '1995-03-10', 'Orchard Rd, Singapore', '0658123456789', 'L', 'Singapore', 4);

INSERT INTO Tiket (ID_Tiket, Nomor_Kursi, Harga, Waktu_Pembelian, Kelas_Penerbangan, NIK_Penumpang, ID_Penerbangan)
VALUES 
    ('TIK001', '12A', 1200000, '2024-11-01 08:00:00', 'Ekonomi', '3201123456789012', 'FL0001'),
    ('TIK002', '14B', 1500000, '2024-11-02 09:30:00', 'Bisnis', '3302134567890123', 'FL0002'),
    ('TIK003', '16C', 2000000, '2024-11-03 10:15:00', 'Ekonomi', '3403145678901234', 'FL0003'),
    ('TIK004', '18D', 1000000, '2024-11-04 11:45:00', 'Ekonomi', '3504156789012345', 'FL0004');

-- tambah kolom
ALTER TABLE Penumpang
ADD Email VARCHAR(200) NOT NULL;

-- ubah jenis data pada kolom
ALTER TABLE Bagasi
MODIFY Jenis VARCHAR(50) NOT NULL;

-- multiple primary key
ALTER TABLE Bandara_Penerbangan 
DROP FOREIGN KEY fk_bandara,
DROP FOREIGN KEY fk_penerbangan;

ALTER TABLE Bandara 
DROP PRIMARY KEY;

ALTER TABLE Bandara
ADD PRIMARY KEY (ID_Bandara, Kode_IATA);

ALTER TABLE Bandara_Penerbangan
ADD CONSTRAINT fk_bandara FOREIGN KEY (Bandara_ID) REFERENCES Bandara(ID_Bandara) ON UPDATE CASCADE ON DELETE CASCADE,
ADD CONSTRAINT fk_penerbangan FOREIGN KEY (Penerbangan_ID) REFERENCES Penerbangan(ID_Penerbangan) ON UPDATE CASCADE ON DELETE CASCADE;

-- hapus kolom
ALTER TABLE Penumpang
DROP COLUMN Email;

-- DML
-- FL0001 perubahan jadwal
UPDATE Penerbangan
SET Waktu_Keberangkatan = '2024-11-01 11:00:00',
    Waktu_Sampai = '2024-11-01 13:30:00'
WHERE ID_Penerbangan = 'FL0001';

-- Siti Aminah dengan NIK xxxx perubahan no telp
UPDATE Penumpang
SET No_Telepon = '081223344556'
WHERE Nama = 'Siti Aminah' AND NIK = '3302134567890123';

-- PKGHI3 perubahan status
UPDATE Pesawat
SET Status_Pesawat = 'Aktif'
WHERE ID_Pesawat = 'PKGHI3';

-- Li Wei FL0004 pembatalan tiket
DELETE FROM Tiket
WHERE NIK_Penumpang = '3504156789012345' AND ID_Penerbangan = 'FL0004';

-- ID bagasi 2 penghapusan data
DELETE FROM Bagasi
WHERE ID_Bagasi = 2 AND Berat = 15 AND Ukuran = 'S' AND Warna = 'Merah';

-- delay flight dibatalkan
DELETE FROM Penerbangan
WHERE Status_Penerbangan = 'Ditunda';
