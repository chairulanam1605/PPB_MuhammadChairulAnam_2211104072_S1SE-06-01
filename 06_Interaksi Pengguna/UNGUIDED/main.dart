import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber.shade800),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Latihan BottomNavigationBar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 10,
  );
  static List<Widget> _widgetOptions = <Widget>[
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: 'Masukan Email Anda',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TextField(
          obscureText: true,
          obscuringCharacter: '*',
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: 'Masukan Password Anda',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Submit'),
        ),
      ]),
    ),
    Text(
      'Ini Halaman Wisata',
      style: optionStyle,
    ),
    Text(
      'Ini Halaman Profile',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Wisata',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
