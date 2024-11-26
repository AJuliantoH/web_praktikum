import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.purple[200],
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(Icons.access_time, color: Colors.purple),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(Icons.menu_book, color: Colors.purple),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(Icons.calendar_today, color: Colors.purple),
              ),
            ],
          ),
        ),
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
    );
  }
}
