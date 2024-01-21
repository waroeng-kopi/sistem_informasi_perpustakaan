<?php 
  $koneksi=mysqli_connect("localhost","root","","db_library");

  if (!$koneksi) {
    echo "Koneksi gagal";
  } 