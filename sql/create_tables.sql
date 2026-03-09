-- Membuat database Lazada
CREATE DATABASE lazada;

-- Membuat tabel peralatan_dapur_kecil
CREATE TABLE peralatan_dapur_kecil (
	id SERIAL PRIMARY KEY,
	nama VARCHAR(255),
	harga INTEGER,
	diskon_persen INTEGER,
	jumlah_terjual INTEGER,
	lokasi VARCHAR(40)
);

-- Masukkan values ke tabel peralatan_dapur_kecil
COPY peralatan_dapur_kecil (nama, harga, diskon_persen, jumlah_terjual, lokasi)
FROM 'C:\temp\clean.csv'
DELIMITER ','
CSV HEADER;

-- Cek data tabel peralatan_dapur_kecil
SELECT * FROM peralatan_dapur_kecil;