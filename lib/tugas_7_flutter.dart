import 'package:belajar_flutter_1/tugas_7_content_part.dart';
import 'package:flutter/material.dart';

class Tugas7Flutter extends StatefulWidget {
  const Tugas7Flutter({super.key});

  @override
  _Tugas7FlutterState createState() => _Tugas7FlutterState();
}

class _Tugas7FlutterState extends State<Tugas7Flutter> {
  int selectIndexPage = 0;

  static const List<Widget> _widgetOptions = <Widget>[Tugas7ContentPart()];

  void _onItemTapped(int index) {
    setState(() {
      selectIndexPage = index;
    });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          "Tugas Flutter 7 (Navigasi Drawer & Form input interaktif)",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(child: _widgetOptions.elementAt(selectIndexPage)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.black38),
              child: Text(
                'Navigation Menu',
                style: TextStyle(color: Colors.white, fontSize: 21),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              selected: selectIndexPage == 0,
              onTap: () {
                _onItemTapped(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.time_to_leave),
              title: const Text('Tugas 2'),
              selected: selectIndexPage == 0,
              onTap: () {
                _onItemTapped(0);
              },
            ),
          ],
        ),
      ),
    );
  }
}
