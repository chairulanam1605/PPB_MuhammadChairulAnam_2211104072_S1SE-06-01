# Pertemuan 3

# Guided
- Variabel dengan var
var adalah cara untuk mendeklarasikan variabel tanpa menentukan tipe datanya secara eksplisit. Dart akan secara otomatis menentukan tipe data berdasarkan nilai yang diberikan.
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/var.png)

- Type Annotation
Type annotation adalah cara untuk mendeklarasikan variabel dengan menentukan tipe datanya secara eksplisit. 
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/Annotation.png)

- Multiple Variable
Dart memungkinkan Anda untuk mendeklarasikan beberapa variabel sekaligus dengan tipe yang sama.
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/Multiple.png)

- IF-ELSE Statement
Untuk memproses suatu kondisi dalam program, kita dapat menggunakan ekspresi if. Jika hasil dari ekspresi tersebut bernilai true (benar), maka blok kode di dalam if akan dijalankan. Namun, jika kondisi tersebut tidak terpenuhi atau bernilai false (salah), kita dapat menggunakan ekspresi else untuk mengeksekusi blok kode alternatif. 
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/IFELSE.png)

- Switch-Case Statement
Switch-case digunakan untuk memilih salah satu dari banyak blok kode untuk dieksekusi berdasarkan nilai suatu ekspresi. Dengan switch-case, program dapat memeriksa variabel dan menjalankan kode yang sesuai dengan nilai yang diberikan. Jika tidak ada case yang cocok, blok default dapat digunakan untuk menangani nilai yang tidak terduga.
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/Switch.png)

- For Loops
Gunakan for loop saat kondisinya tau persis seberapa banyak looping akan dilakukan, contohnya  melakukan perulangan sebanyak 10 kali dengan iterasi sebanyak 1 tingkat atau 1 kali. 
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/For_Loop.png)

- While Loops 
Gunakan while loop saat kondisinya tidak tahu kapan perulangan akan berhenti, contohnya sediakan input angka hingga user menginput tanda "".
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/While_Loop.png)

- Fixed Length List 
fixed length list adalah List yang ukurannya tidak dapat diubah saat runtime
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/Fixed_List.png)

- Growable List
Growable list adalah daftar yang dapat dikembangkan atau diubah ukurannya untuk mengakomodasi item baru atau menghapus item
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/Growable_List.png)

- Fungsi Mengembalikan Nilai
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/Fungsi%20_Nilai.png)

- Fungsi Menambahkan Parameter
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/Fungsi_Parameter.png)

# UNGUIDED

- Percabangan
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/Soal1.png)
1. Mengimpor library dart:io yang diperlukan untuk membaca input dari pengguna
2. print("Masukkan nilai mahasiswa: ");: Menampilkan pesan ke konsol untuk meminta pengguna memasukkan nilai.
3. String input = stdin.readLineSync()!;: Membaca input dari pengguna sebagai string. Tanda seru (!) digunakan untuk memastikan bahwa input tidak null.
4. int nilai = int.parse(input);: Mengonversi input string menjadi integer.
5. String result = nilaiMahasiswa(nilai);: Memanggil fungsi nilaiMahasiswa dengan parameter nilai dan menyimpan hasilnya dalam variabel result.
6. print(result);: Menampilkan hasil dari fungsi nilaiMahasiswa ke konsol.
7. if (nilai > 70): Jika nilai lebih dari 70, fungsi mengembalikan string yang menyatakan bahwa nilai tersebut adalah Nilai A.
8. else if (nilai > 40 && nilai <= 70): Jika nilai antara 41 dan 70, fungsi mengembalikan string yang menyatakan bahwa nilai tersebut adalah Nilai B.
9. else if (nilai > 0 && nilai <= 40): Jika nilai antara 1 dan 40, fungsi mengembalikan string yang menyatakan bahwa nilai tersebut adalah Nilai C.
10. else: Jika nilai tidak memenuhi kondisi di atas (misalnya nilai negatif atau nol), fungsi mengembalikan string kosong.

- Looping
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/Soal2.png)
1. Mengimpor library dart:io yang diperlukan untuk membaca input dari pengguna
2. print("Masukkan tinggi piramida: ");: Menampilkan pesan ke konsol untuk meminta pengguna memasukkan tinggi piramida.
3. int tinggi = int.parse(stdin.readLineSync() ?? "0");: Membaca input dari pengguna sebagai string, mengonversinya menjadi integer, dan menyimpan dalam variabel tinggi. Jika input null, maka nilai default adalah 0
4. Loop ini berjalan dari 0 hingga tinggi - 1, mengatur jumlah baris piramida.
5. Loop ini menambahkan spasi di setiap baris. Jumlah spasi berkurang seiring bertambahnya baris, menciptakan bentuk piramida.
6. Loop ini menambahkan bintang di setiap baris. Jumlah bintang bertambah seiring bertambahnya baris.
7. Setelah selesai menambahkan spasi dan bintang di satu baris, pindah ke baris baru.

- Function
![image alt](https://github.com/chairulanam1605/Praktikum_PPB/blob/main/Soal3.png)
1. Mengimpor library dart:io yang diperlukan untuk membaca input dari pengguna
2. print("Masukkan bilangan bulat: ");: Menampilkan pesan ke konsol untuk meminta pengguna memasukkan bilangan bulat.
3. int bilangan = int.parse(stdin.readLineSync()!);: Membaca input dari pengguna sebagai string, mengonversinya menjadi integer, dan menyimpannya dalam variabel bilangan. Tanda seru (!) digunakan untuk memastikan bahwa input tidak null.
4. Menginisialisasi variabel isPrima dengan nilai true. Variabel ini akan digunakan untuk menentukan apakah bilangan tersebut adalah bilangan prima.
5. for (int i = 2; i <= bilangan / 2; i++): Loop ini berjalan dari 2 hingga setengah dari nilai bilangan. Loop ini digunakan untuk mengecek apakah bilangan habis dibagi oleh angka lain selain 1 dan dirinya sendiri.
6. if (bilangan % i == 0): Jika bilangan habis dibagi i, maka bilangan bukan bilangan prima.
7. isPrima = false;: Mengubah nilai isPrima menjadi false jika ditemukan pembagi selain 1 dan bilangan.
8. break;: Menghentikan loop jika bilangan bukan bilangan prima
9. if (isPrima && bilangan > 1): Mengecek apakah isPrima masih true dan bilangan lebih besar dari 1. Bilangan prima adalah bilangan yang hanya memiliki dua pembagi: 1 dan dirinya sendiri, dan harus lebih besar dari 1.
10. print("$bilangan adalah bilangan prima");: Menampilkan pesan bahwa bilangan adalah bilangan prima jika kondisi di atas terpenuhi.
11. else: Jika kondisi di atas tidak terpenuhi, menampilkan pesan bahwa bilangan bukan bilangan prima.