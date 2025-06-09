# 1
CREATE DATABASE Klinik_Hewan_AnimaCare;

USE Klinik_Hewan_AnimaCare; -- Opsional

CREATE TABLE pemilik_hewan (
    ph_id CHAR(5) NOT NULL PRIMARY KEY,
    ph_nama VARCHAR(100) NOT NULL,
    ph_telepon VARCHAR(15) NOT NULL
);

CREATE TABLE hewan (
    h_id CHAR(5) NOT NULL PRIMARY KEY,
    h_nama VARCHAR(100) NOT NULL,
    h_usia INT NOT NULL,
    pemilik_hewan_ph_id CHAR(5) NOT NULL,
    CONSTRAINT fk_h_ph FOREIGN KEY (pemilik_hewan_ph_id) REFERENCES pemilik_hewan(ph_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE dokter (
    d_id CHAR(5) NOT NULL PRIMARY KEY,
    d_nama VARCHAR(100) NOT NULL,
    d_spesialis VARCHAR(100) NOT NULL,
    d_telepon VARCHAR(15) NOT NULL,
    d_email VARCHAR(100) NOT NULL
);

CREATE TABLE supplier (
   s_id char(5) NOT NULL PRIMARY KEY,
   s_nama varchar(100)  NOT NULL,
   s_alamat varchar(100)  NOT NULL,
   s_telepon varchar(15)  NOT NULL,
   s_email varchar(100)  NOT NULL
);

CREATE TABLE obat (
    o_id CHAR(5) NOT NULL PRIMARY KEY,
    o_nama VARCHAR(100) NOT NULL,
    o_jenis VARCHAR(100) NOT NULL,
    o_harga FLOAT(2) NOT NULL,
    supplier_s_id CHAR(5) NOT NULL,
    CONSTRAINT fk_o_s FOREIGN KEY (supplier_s_id) REFERENCES supplier(s_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE perawatan (
    p_id CHAR(5) NOT NULL PRIMARY KEY,
    p_deskripsi TEXT NOT NULL,
    p_waktu_masuk DATETIME NOT NULL,
    p_waktu_keluar DATETIME,
    dokter_d_id CHAR(5) NOT NULL,
    hewan_h_id CHAR(5) NOT NULL,
    CONSTRAINT fk_p_d FOREIGN KEY (dokter_d_id) REFERENCES dokter(d_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_p_h FOREIGN KEY (hewan_h_id) REFERENCES hewan(h_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE perawatan_obat (
    perawatan_p_id CHAR(5) NOT NULL,
    obat_o_id CHAR(5) NOT NULL,
    CONSTRAINT fk_po_t FOREIGN KEY (perawatan_p_id) REFERENCES perawatan(p_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_po_o FOREIGN KEY (obat_o_id) REFERENCES obat(o_id),
    PRIMARY KEY (perawatan_p_id, obat_o_id) 
);