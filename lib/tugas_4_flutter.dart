import 'package:flutter/material.dart';

class Tugas4Flutter extends StatelessWidget {
  const Tugas4Flutter({super.key});

  final List<Map<String, String>> dataUsers = const [
    {"nama": "Angga", "status": "Aktif"},
    {"nama": "Boril", "status": "Non-Aktif"},
    {"nama": "Carla", "status": "Aktif"},
    {"nama": "Dita", "status": "Non-Aktif"},
    {"nama": "Erlangga", "status": "Aktif"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(222, 222, 2, 2),
        title: Text('Tugas Flutter  4 (ListView & ListTile)'),
      ),
      body: ListView.builder(
        itemCount: dataUsers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text("${index + 1}")),
            title: Text(dataUsers[index]["nama"] ?? 'nama kosong'),
          );
        },
      ),
    );
  }
}
