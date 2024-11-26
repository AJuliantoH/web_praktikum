import 'package:flutter/material.dart';
import 'pages/home.dart'; // Halaman Home
import 'pages/navbar.dart'; // Navbar
import 'pages/shop.dart'; // Halaman Shop
import 'pages/profile.dart'; // Halaman Profile

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  // Fungsi untuk memanggil halaman yang sesuai dengan tab yang dipilih
  Widget _getSelectedPage(int index) {
    switch (index) {
      case 0:
        return Home(); // Halaman Home
      case 1:
        return Business(); // Halaman Business
      case 2:
        return School(); // Halaman School
      default:
        return Home();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.purple[200],
            flexibleSpace: Center(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl1Mv-aT--FcnKm-1MQLUm9xeWsl2ZpeXbMw&s', // Ganti dengan URL atau gambar Anda
                fit: BoxFit.contain,
                height: 100,
              ),
            ),
          ),
        ),
        body: _getSelectedPage(_selectedIndex), // Menampilkan halaman yang sesuai
        bottomNavigationBar: Navbar(
          selectedIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
