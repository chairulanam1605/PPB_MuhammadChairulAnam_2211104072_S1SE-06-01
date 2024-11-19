<li> Nama  : Muhammad Chairul Anam
<li> NIM   : 2211104072
<li> Kelas : S1SE-06-01

1. Jelaskan secara singkat fungsi SQLite dalam pengembangan aplikasi mobile!
   
Jawab :

SQLite adalah sistem manajemen basis data ringan yang sering digunakan dalam pengembangan aplikasi mobile yang memiliki fungsi menyimpan data lokal di perangkat pengguna tanpa memerlukan koneksi; Untuk mengelola data dengan menggunakan operasi CRUD; Cepat, efisien dan memiliki footprint kecil sehingga cocok untuk aplikasi mobile.

3. Apa saja yang dimaksud dengan operasi CRUD? Berikan penjelasan singkat untuk masing-masing operasi!
Jawab:

CRUD singkatan dari :

- CREATE : Operasi untuk menambahkan data baru kedalam basis data
- READ : Operasi untuk membaca atau mengambil data dari basis data
- UPDATE : Operasi untuk memperbarui data yang sudah ada di basis data
- DELETE : Operasi untuk menghapus data dari basis data

3. Tuliskan kode SQL untuk membuat tabel bernama users dengan kolom berikut:
- id (integer, primary key, auto increment)
- name (text)
- email (text)
- createdAt (timestamp, default value adalah waktu sekarang)

Jawab :

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

4. Sebutkan langkah-langkah utama untuk menggunakan plugin sqflite di dalam Flutter!

Jawab :

<li> menambahkan dependensi sqflite dan path di dalam file pubspec.yaml
<li> membuat kelas helper untuk menangani operasi SQLite
<li> menggunakan openDatabase untuk membuka atau membuat database
<li> menggunakan perintah SQL didalam onCreate untuk membuat table yang diperlukan
<li> menggunakan fungsi seperti insert,query,update dan delete untuk memanipulasi data

5. Lengkapi kode berikut untuk membaca semua data dari tabel users menggunakan sqflite.

Jawab :

![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/TP10_Soal5.png)
