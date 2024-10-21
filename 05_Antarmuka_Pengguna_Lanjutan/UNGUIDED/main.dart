import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Banyumas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Rekomendasi Wisata Banyumas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class KategoriWisata {
  String nama;
  String deskripsi;
  String gambar;
  KategoriWisata({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
  });
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<KategoriWisata> wisata = [
      KategoriWisata(
        nama: 'Baturraden',
        deskripsi:
            'Baturraden merupakan salah satu Kecamatan di Banyumas yang menyimpan banyak daya tarik wisata. Terletak di lereng Gunung Slamet, Baturraden menawarkan keindahan alam yang memikat hati para wisatawan.',
        gambar:
            'https://awsimages.detik.net.id/community/media/visual/2023/09/05/lokawisata-baturraden-1.jpeg?w=800',
      ),
      KategoriWisata(
        nama: 'Pantai Menganti',
        deskripsi:
            'Pantai Menganti, yang terletak di Desa Karangduwur, adalah salah satu destinasi wisata pantai yang memukau dengan keindahan alamnya.',
        gambar:
            'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/183/2024/08/12/Screenshot-2024-08-12-065255-3581069888.png',
      ),
      KategoriWisata(
        nama: 'Borobudur',
        deskripsi:
            'Candi Borobudur adalah salah satu keajaiban arsitektur dunia, memukau setiap pengunjung dengan keindahan dan kompleksitasnya.',
        gambar:
            'https://d22gwcrfo2de51.cloudfront.net/wp-content/uploads/2022/06/20211125DRA14.jpg',
      ),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.title, style: const TextStyle(color: Colors.white),),
              background: Image.network(
                'https://awsimages.detik.net.id/community/media/visual/2023/09/05/lokawisata-baturraden-1.jpeg?w=800',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final tempatWisata = wisata[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        tempatWisata.gambar,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          tempatWisata.nama,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          tempatWisata.deskripsi,
                          style: const TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Aksi ketika tombol diklik
                          },
                          child: const Text('Kunjungi Sekarang', style: TextStyle(color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: wisata.length,
            ),
          ),
        ],
      ),
    );
  }
}
