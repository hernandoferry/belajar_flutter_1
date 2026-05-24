import 'package:flutter/material.dart';

class Tugas9FlutterMap extends StatelessWidget {
  const Tugas9FlutterMap({super.key});

  // Memindahkan variabel ke luar build method agar tidak dibuat ulang setiap render (Good Practice)
  final List<Map<String, dynamic>> arrKategori = const [
    {"nama": "Aqua 600ml", "icon": Icons.water_drop_outlined},
    {"nama": "Buavita Mango", "icon": Icons.blender_outlined},
    {"nama": "Coca-Cola Kaleng", "icon": Icons.local_bar_outlined},
    {"nama": "Kopi Kenangan Mantan", "icon": Icons.coffee_outlined},
    {"nama": "Teh Botol Sosro", "icon": Icons.emoji_food_beverage_outlined},
    {
      "nama": "Susu Ultra Milk Cokelat",
      "icon": Icons.breakfast_dining_outlined,
    },
    {"nama": "Tolak Angin Cair", "icon": Icons.health_and_safety_outlined},
    {"nama": "Rejuve Smoothie", "icon": Icons.icecream_outlined},
    {"nama": "Kratingdaeng", "icon": Icons.bolt_outlined},
    {"nama": "Pocari Sweat 500ml", "icon": Icons.sports_gymnastics_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Pendekatan List of Map"),
          const SizedBox(height: 1),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: arrKategori.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 2,
              ),
              itemBuilder: (context, index) {
                final item = arrKategori[index];

                return Card(
                  elevation: 2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            item["icon"] as IconData,
                            color: Colors.amber,
                            size: 28,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              item["nama"] ?? "-",
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
