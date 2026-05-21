import 'package:flutter/material.dart';

class Tugas8Flutter extends StatefulWidget {
  const Tugas8Flutter({super.key});

  @override
  _Tugas8FlutterState createState() => _Tugas8FlutterState();
}

class _Tugas8FlutterState extends State<Tugas8Flutter> {
  int _selectedIndex = 0;
  final List<String> judulAppBar = ['Home', 'Tentang Aplikasi'];

  static const List<Widget> _widgetOptions = <Widget>[
    Text("index 0 : Home"),
    Text("index 1 : Tentang Aplikasi"),
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
        backgroundColor: Colors.amber,
        title: RichText(
          text: TextSpan(
            // Gabungkan teks statis dan variabel di dalam satu pasang tanda petik ""
            text: "Tugas 8 flutter : ${judulAppBar[_selectedIndex]}",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Tentang aplikasi',
          ),
        ],
      ),
    );
  }
}
