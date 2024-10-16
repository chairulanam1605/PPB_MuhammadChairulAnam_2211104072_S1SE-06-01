import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class KategoriWisata {
  String nama;
  String deskripsi;
  String gambar;
  KategoriWisata(
      {required this.nama, required this.deskripsi, required this.gambar});
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<KategoriWisata> Wisata = [
      KategoriWisata(
          nama: 'Baturraden',
          deskripsi:
              'Baturraden merupakan salah satu Kecamatan di Banyumas yang menyimpan banyak daya tarik wisata. Terletak di lereng Gunung Slamet, Baturraden menawarkan keindahan alam yang memikat hati para wisatawan. Objek wisata Baturraden yang bisa Anda kunjungi pun beragam, mulai dari wisata alam hingga wisata kuliner.',
          gambar:
              'https://awsimages.detik.net.id/community/media/visual/2023/09/05/lokawisata-baturraden-1.jpeg?w=800'),
      KategoriWisata(
          nama: 'Pantai Menganti',
          deskripsi:
              ' Pantai Menganti, yang terletak di Desa Karangduwur, Kecamatan Ayah, Kabupaten Kebumen, Jawa Tengah, adalah salah satu destinasi wisata pantai yang memukau dengan keindahan alamnya.',
          gambar:
              'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/183/2024/08/12/Screenshot-2024-08-12-065255-3581069888.png'),
      KategoriWisata(
          nama: 'Borobudur',
          deskripsi:
              'Terletak di jantung Jawa Tengah, Candi Borobudur berdiri megah sebagai salah satu keajaiban arsitektur dunia, memukau setiap pengunjung dengan keindahan dan kompleksitasnya. Didirikan pada abad ke-9 oleh Dinasti Syailendra, Borobudur adalah bukti nyata kejayaan peradaban kuno Indonesia dan keahlian teknik mereka yang luar biasa.',
          gambar:
              'https://d22gwcrfo2de51.cloudfront.net/wp-content/uploads/2022/06/20211125DRA14.jpg'),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              'Rekomendasi Wisata',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: Wisata.length,
          itemBuilder: (context, index) {
            return Card(
                child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          Wisata[index].nama,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Image.network(
                    Wisata[index].gambar,
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 200, vertical: 10),
                    child: Column(
                      children: [
                        Text(
                          Wisata[index].deskripsi,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Kunjungi Sekarang",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ));
          },
        ));
  }
}
