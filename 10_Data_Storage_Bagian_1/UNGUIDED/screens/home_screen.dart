import 'package:flutter/material.dart';
import '../db/db_helper.dart';
import '../models/mahasiswa.dart';
import 'add_mahasiswa_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Mahasiswa> _Mahasiswa = [];

  @override
  void initState() {
    super.initState();
    _loadMahasiswa();
  }

  Future<void> _loadMahasiswa() async {
    final Mahasiswa = await DBHelper().getMahasiswa();
    setState(() {
      _Mahasiswa = Mahasiswa;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQLite Biodata Mahasiswa'),
        backgroundColor: Colors.orange,
      ),
      body: _Mahasiswa.isEmpty
          ? Center(child: Text('Belum ada data mahasiswa'))
          : ListView.builder(
              itemCount: _Mahasiswa.length,
              itemBuilder: (context, index) {
                final mahasiswa = _Mahasiswa[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(mahasiswa.name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(
                        'NIM: ${mahasiswa.nim}\nAlamat: ${mahasiswa.address}\nHobi: ${mahasiswa.hobby}'),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddMahasiswaScreen()),
          );
          _loadMahasiswa(); // Reload data
        },
      ),
    );
  }
}
