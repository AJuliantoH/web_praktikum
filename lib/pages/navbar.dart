import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onTap;

  Navbar({required this.selectedIndex, required this.onTap});

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home), // Ikon Home
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag), // Ikon Shop
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person), // Ikon Profile
          label: 'Profile',
        ),
      ],
      currentIndex: widget.selectedIndex, // Menggunakan widget.selectedIndex
      selectedItemColor: Colors.purple, // Warna ikon yang dipilih
      onTap: widget.onTap, // Menggunakan widget.onTap
    );
  }
}
