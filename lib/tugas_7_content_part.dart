import 'package:flutter/material.dart';

class Tugas7ContentPart extends StatefulWidget {
  const Tugas7ContentPart({super.key});

  @override
  _Tugas7ContentPartState createState() => _Tugas7ContentPartState();
}

class _Tugas7ContentPartState extends State<Tugas7ContentPart> {
  bool _isChecked = false;
  String? setNilaiAwalDropdown = 'Elektronik';
  final List<String> _dropdownItems = [
    'Elektronik',
    'Pakaian',
    'Makanan',
    'Lain-lain',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 11, left: 11, right: 11),
            width: 400,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(7),
            ),

            child: Column(
              children: [
                Expanded(
                  child: CheckboxListTile(
                    title: const Text(
                      'Setuju dengan Syarat & Ketentuan',
                      style: TextStyle(color: Colors.white),
                    ),
                    value: _isChecked,
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.amber,
                    side: const BorderSide(color: Colors.white, width: 2.0),
                    onChanged: (bool? newValue) {
                      setState(() {
                        _isChecked = newValue ?? false;
                      });
                    },
                  ),
                ),
                SizedBox(height: 11),
                Text(
                  _isChecked
                      ? "Pendaftaran diperbolehkan"
                      : "Maaf Pendaftaran belum tersedia",
                  style: TextStyle(
                    color: _isChecked ? Colors.amber : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11),
          Container(
            width: 400,
            height: 90,
            margin: EdgeInsets.only(left: 11, right: 11),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(
              children: [
                CheckboxListTile(
                  title: const Text(
                    'Setuju dengan Syarat & Ketentuan',
                    style: TextStyle(color: Colors.white),
                  ),
                  value: _isChecked,
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.amber,
                  side: const BorderSide(color: Colors.white, width: 2.0),
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isChecked = newValue ?? false;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
