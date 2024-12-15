import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/homepage.dart';
import 'screens/add_note_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Notes App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Homepage()),
        GetPage(name: '/add', page: () => AddNotePage()),
      ],
    );
  }
}


