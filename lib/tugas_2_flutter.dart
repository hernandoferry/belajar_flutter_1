import 'package:flutter/material.dart';

class Tugas2Flutter extends StatelessWidget {
  const Tugas2Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 2 Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 183, 98, 58),
        ),
      ),
      home: const TugasDuaFlutter(title: 'Detail Merchant'),
    );
  }
}

class TugasDuaFlutter extends StatefullWidget {}
