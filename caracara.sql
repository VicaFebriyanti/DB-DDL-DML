/*CARA KONEKSI MYSQL via TERMINAL*/
cd xampp\mysql\bin;
> mysql -u root -p;

/*CARA MENAMPILKAN DATABASE */
SHOW DATABASES;

/*CARA MEMBUAT DATABASE*/
CREATE DATABASE `11rpl_db`;

/*CARA MEMBUAT TABEL*/ 
CREATE TABLE `siswa` (
    id_siswa INT(11) PRIMARY KEY AUTO_INCREMENT,
    nis CHAR(10),
    nama_lengkap VARCHAR(255),
    jk CHAR(255),
    tmp_lahir VARCHAR(255),
    tgl_lahir DATE,
    alamat TEXT,
    no_hp CHAR(15),
    tanggal_entri DATETIME
);

/*CARA MENAMPILKAN TABEL*/
SHOW TABLE;

/*CARA MENAMPILKAN SPESIFIKASI TABEL*/
DESCRIBE `siswa`;

/*CARA MENAMBAHKAN RECORD*/
INSERT INTO `siswa` SET (
    id_siswa = NULL,
    nis = '00000000',
    nama_lengkap = 'VICA FEBRIYANTI',
    jk = 'L',
    tmp_lahir = 'SUBANG',
    tgl_lahir = '2004-02-08',
    alamat = 'CICADAS',
    no_hp = '08812269286'
    tanggal_entri = NOW();
)

/*CARA MENAMPILKAN SELURUH DATA SISWA*/
SELECT * FROM `siswa`;

/*CARA MENAMPILKAN DATA DENGAN KONDISI TERTENTU*/
SELECT * FROM `siswa` WHERE jk ='P';

/*CARA MENAMPILKAN BEBERAPA/BATAS RECORD PADA TABEL*/
SELECT* FROM `siswa` LIMIT 3,5;

/*CARA MENAMPILKAN/MENGURUTKAN RECORD BERDASARKAN FIELD TERTENTU*/
SELECT* FROM `siswa` ORDER BY tgl_lahir DESC;

/*CARA MENAMPILKAN FIELD MENGGUNAKAN FUNCTION*/
SELECT UPPER(alamat) FROM `siswa`;

/*CARA MENAMPILKAN BEBERAPA FIELD dengan KONDIDI TERTENTU*/
SELECT nama_lengkap, tmp_lahir, tgl_lahir FROM `siswa` WHERE YEAR(tgl_lahir) = '2002';

/*CARA MEMPERBAHARUI DATA PADA TABEL*/
UPDATE `siswa` SET tmp_lahir = 'BANDUNG', tgl_lahir = '2003-01-01', WHERE id_siswa = '1';

/*CARA MENGHAPUS DATA/RECORD*/
DELETE FROM `siswa` WHERE id_siswa = '1';

