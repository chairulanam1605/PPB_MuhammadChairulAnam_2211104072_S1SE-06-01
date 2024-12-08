import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Controller untuk mengelola state counter
class CounterController extends GetxController {
  // Variabel untuk menyimpan nilai counter dengan .obs agar reaktif
  var counter = 0.obs;

  // Fungsi untuk menambah nilai counter
  void increment() {
    counter++;
  }

  // Fungsi untuk mereset nilai counter ke 0
  void reset() {
    counter.value = 0;
  }
}

class HomePage extends StatelessWidget {
  // Inisialisasi CounterController menggunakan Get.put()
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
        child: Obx(() {
          // Widget Obx memperbarui UI saat nilai counter berubah
          return Text(
            "${controller.counter}",
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Tombol untuk menambah nilai counter
          FloatingActionButton(
            onPressed: () {
              controller.increment();
            },
            child: Icon(Icons.add),
            heroTag: "btn1",
          ),
          SizedBox(height: 10),
          // Tombol untuk mereset nilai counter ke 0
          FloatingActionButton(
            onPressed: () {
              controller.reset();
            },
            child: Icon(Icons.refresh),
            heroTag: "btn2",
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
