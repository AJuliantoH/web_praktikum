import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200), // Mengatur tinggi AppBar
          child: AppBar(
            backgroundColor: Colors.purple[200],
            flexibleSpace: Center(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl1Mv-aT--FcnKm-1MQLUm9xeWsl2ZpeXbMw&s', // Ganti dengan URL gambar Anda
                fit: BoxFit.contain,
                height: 300, // Atur tinggi gambar sesuai kebutuhan
                width: 300,
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            // Baris dengan ikon-ikon di dalam kotak
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Ikon pertama dalam kotak
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(8), // Membuat sudut melengkung
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(Icons.access_time, color: Colors.white),
                  ),
                  // Ikon kedua dalam kotak
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(8), // Membuat sudut melengkung
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                  // Ikon ketiga dalam kotak
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(8), // Membuat sudut melengkung
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(Icons.apartment, color: Colors.white),
                  ),
                ],
              ),
            ),
            // Daftar nama
            const ListTile(title: Text('Andi')),
            const ListTile(title: Text('Budi')),
            const ListTile(title: Text('Caca')),
            const ListTile(title: Text('Dedi')),
            const ListTile(title: Text('Eka')),
            const ListTile(title: Text('Fani')),
            const ListTile(title: Text('Gilang')),
            const ListTile(title: Text('Hadi')),
            const ListTile(title: Text('Ira')),
            const ListTile(title: Text('Joko')),
            const ListTile(title: Text('Kiki')),
            const ListTile(title: Text('Lina')),
            const ListTile(title: Text('Mira')),
          ],
        ),
      ),
    );
  }
}
