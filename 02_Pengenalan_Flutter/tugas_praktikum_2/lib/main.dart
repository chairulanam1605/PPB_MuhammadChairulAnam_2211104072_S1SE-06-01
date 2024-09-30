import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Biodata Card'),
        ),
        body: Center(
          child: BiodataCard(),
        ),
      ),
    );
  }
}

class BiodataCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent[400],
      elevation: 5,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Foto Profil
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/pp.jpg',
              ),
            ),
            SizedBox(height: 16),

            // Nama
            Text(
              'Nama: Muhammad Chairul Anam',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            // Umur
            Text(
              'Umur: 19 tahun',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),

            // Alamat
            Text(
              'Alamat: Jln.Pejagalan Kulon RT.02 RW.05 Kec.Sokaraja',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),

            // Asal Kampus
            Text(
              'Asal Kampus: Telkom University Purwokerto',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),

            // NIM
            Text(
              'NIM: 2211104072',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),

            // Prodi
            Text(
              'Prodi: Rekayasa Perangkat Lunak',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),

            // Kelas
            Text(
              'Kelas: S1SE-06-01',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
