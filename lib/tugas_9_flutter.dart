import 'package:belajar_flutter_1/tugas_9_flutter_map.dart';
import 'package:belajar_flutter_1/tugas_9_flutter_model.dart';
import 'package:flutter/material.dart';

class Tugas9Flutter extends StatefulWidget {
  const Tugas9Flutter({super.key});

  @override
  _Tugas9FlutterState createState() => _Tugas9FlutterState();
}

class _Tugas9FlutterState extends State<Tugas9Flutter> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildListSederhana() {
    List<String> arrKategori = [
      "Air Mineral",
      "Jus & Sari Buah",
      "SoftDrinks",
      "Kopi",
      "Tea",
      "Susu",
      "Jamu Tradisional",
      "Kelapa Muda",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Membuat teks rata kiri
      children: [
        const SizedBox(height: 8),
        const Center(
          child: Text(
            "1. Pendekatan List Sederhana",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Kategori Minuman :', style: TextStyle(fontSize: 14)),
        ),
        const SizedBox(height: 4),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: arrKategori.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 3 / 1,
            ),
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      arrKategori[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetOptions = <Widget>[
      _buildListSederhana(),
      const Tugas9FlutterMap(),
      const Tugas9FlutterModel(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Tugas 9 Flutter (List,Map,Model)"),
      ),
      body: widgetOptions[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'List'),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_bar_outlined),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.water_drop_outlined),
            label: 'Model',
          ),
        ],
      ),
    );
  }
}
