CREATE DATABASE IF NOT EXISTS db_library;
USE db_library;

CREATE TABLE IF NOT EXISTS tb_kategori (
  id_kategori VARCHAR(12) PRIMARY KEY,
  nama_kategori VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tb_penerbit (
  id_penerbit VARCHAR(12) PRIMARY KEY,
  nama_penerbit VARCHAR(255),
  kota_penerbit VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tb_penulis (
  id_penulis VARCHAR(12) PRIMARY KEY,
  nama_penulis VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tb_buku (
  id_buku VARCHAR(12) PRIMARY KEY,
  isbn VARCHAR(255),
  judul VARCHAR(255),
  fk_id_penulis VARCHAR(12),
  fk_id_penerbit VARCHAR(12),
  fk_id_kategori VARCHAR(12),
  tahun_terbit VARCHAR(12),
  sinopsis VARCHAR(255),
  jumlah INT(12),
  foto_sampul VARCHAR(255),
  FOREIGN KEY (fk_id_penulis) REFERENCES tb_penulis(id_penulis),
  FOREIGN KEY (fk_id_penerbit) REFERENCES tb_penerbit(id_penerbit),
  FOREIGN KEY (fk_id_kategori) REFERENCES tb_kategori(id_kategori)
);

CREATE TABLE IF NOT EXISTS tb_anggota (
  id_anggota VARCHAR(12) PRIMARY KEY,
  nama_anggota VARCHAR(255),
  jenis_kelamin VARCHAR(1), -- L = Laki-laki || P = Perempuan
  tempat_lahir VARCHAR(255),
  tanggal_lahir DATE, -- YYYY-MM-DD
  alamat_anggota VARCHAR(255),
  no_hp VARCHAR(255),
  foto_anggota VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tb_admin (
  id_admin VARCHAR(12) PRIMARY KEY,
  nama_admin VARCHAR(255),
  username_admin VARCHAR(255),
  password_admin VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tb_peminjaman (
  id_peminjaman VARCHAR(12) PRIMARY KEY,
  fk_id_anggota VARCHAR(12),
  tanggal_pinjam DATE, -- YYYY-MM-DD
  tanggal_batas_pinjam DATE,
  fk_id_admin VARCHAR(12),
  status_pinjam ENUM('masih dipinjam','sudah kembali'),
  FOREIGN KEY (fk_id_anggota) REFERENCES tb_anggota(id_anggota),
  FOREIGN KEY (fk_id_admin) REFERENCES tb_admin(id_admin)
);

CREATE TABLE IF NOT EXISTS tb_detail_peminjaman (
  id_detail_peminjaman VARCHAR(12) PRIMARY KEY,
  fk_id_peminjaman VARCHAR(12),
  fk_id_buku VARCHAR(12),
  jumlah_pinjam VARCHAR(12),
  FOREIGN KEY (fk_id_peminjaman) REFERENCES tb_peminjaman(id_peminjaman),
  FOREIGN KEY (fk_id_buku) REFERENCES tb_buku(id_buku)
);

CREATE TABLE IF NOT EXISTS tb_temp_peminjaman (
  id_temp VARCHAR(12) PRIMARY KEY,
  fk_id_buku VARCHAR(12),
  jumlah_pinjam VARCHAR(12)
);

CREATE TABLE IF NOT EXISTS tb_pengembalian (
  id_pengembalian VARCHAR(12) PRIMARY KEY,
  fk_id_peminjaman VARCHAR(12), 
  tanggal_kembali DATE, -- YYYY-MM-DD
  fk_id_admin VARCHAR(12),
  denda INT(12),
  FOREIGN KEY (fk_id_peminjaman) REFERENCES tb_pengembalian(id_pengembalian),
  FOREIGN KEY (fk_id_admin) REFERENCES tb_admin(id_admin)
);

CREATE TABLE IF NOT EXISTS tb_pengadaan_buku (
  id_pengadaan VARCHAR(12) PRIMARY KEY,
  tanggal_pengadaan DATE, -- YYYY-MM-DD
  fk_id_buku VARCHAR(12),
  asal_buku VARCHAR(255),
  jumlah INT(12),
  keterangan VARCHAR(255),
  fk_id_admin VARCHAR(255),
  FOREIGN KEY (fk_id_buku) REFERENCES tb_buku(id_buku),
  FOREIGN KEY (fk_id_admin) REFERENCES tb_admin(id_admin)
);