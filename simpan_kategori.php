<?php
  include "koneksi.php";
  $kode_kategori=$_POST['kode_kategori'];
  $nama_kategori=$_POST['nama_kategori'];
  $query=mysqli_query($koneksi,"INSERT INTO tb_kategori VALUES ('$kode_kategori', '$nama_kategori')");
  header('location:data_kategori.php');