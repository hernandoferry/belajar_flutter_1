import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tugas7ContentPart extends StatefulWidget {
  const Tugas7ContentPart({super.key});

  @override
  _Tugas7ContentPartState createState() => _Tugas7ContentPartState();
}

class _Tugas7ContentPartState extends State<Tugas7ContentPart> {
  bool _isChecked = false;
  String? setNilaiAwalDropdown = 'Elektronik';
  DateTime? pilihTanggal;
  TimeOfDay? pilihJam;
  bool modeGelap = false;
  bool setTemaGelap = false;

  final List<String> _dropdownItems = [
    'Elektronik',
    'Pakaian',
    'Makanan',
    'Lain-lain',
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData currentTheme = setTemaGelap
        ? ThemeData.dark() // Tema Gelap bawaan Flutter
        : ThemeData.light();

    final Color textColor = setTemaGelap ? Colors.white : Colors.black;

    return Theme(
      data: currentTheme,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 11, left: 11, right: 11),
              width: 400,
              padding: const EdgeInsets.only(bottom: 11),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                  const SizedBox(height: 5),
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
            const SizedBox(height: 11),
            Container(
              width: 400,
              height: 120,
              margin: const EdgeInsets.only(left: 11, right: 11),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 11,
                      right: 11,
                      top: 15,
                    ),
                    child: DropdownMenu<String>(
                      initialSelection: setNilaiAwalDropdown,
                      width: double.infinity,
                      label: const Text('Pilih Kategori'),
                      leadingIcon: const Icon(Icons.category),
                      dropdownMenuEntries: _dropdownItems.map((String item) {
                        return DropdownMenuEntry<String>(
                          value: item,
                          label: item,
                        );
                      }).toList(),
                      onSelected: (String? newValue) {
                        setState(() {
                          setNilaiAwalDropdown = newValue;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 11),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: textColor, fontSize: 16),
                      children: [
                        const TextSpan(text: "kategori yang dipilih: "),
                        TextSpan(
                          text: setNilaiAwalDropdown ?? 'null',
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 11),
            Container(
              margin: const EdgeInsets.only(left: 11, right: 11),
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                          );

                          if (picked != null) {
                            setState(() {
                              pilihTanggal = picked;
                            });
                          }
                        },
                        child: const Text("Pilih tanggal"),
                      ),
                      const SizedBox(width: 11),
                      Text(
                        "Tanggal dipilih : ${pilihTanggal != null ? DateFormat('dd-MM-yyyy').format(pilihTanggal!) : 'Belum dipilih'}",
                        style: TextStyle(color: textColor),
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 11),
            Container(
              margin: const EdgeInsets.only(left: 11, right: 11),
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () async {
                          final TimeOfDay? picked = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                          if (picked != null) {
                            setState(() {
                              pilihJam = picked;
                            });
                          }
                        },
                        child: const Text("Pilih Jam"),
                      ),
                      const SizedBox(width: 11),
                      Text(
                        "Jam dipilih : ${pilihJam != null ? pilihJam!.format(context) : 'Belum dipilih'}",
                        style: TextStyle(color: textColor),
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 11),

            Container(
              margin: const EdgeInsets.only(left: 11, right: 11),
              width: 400,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: setTemaGelap ? Colors.grey[800] : Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.grey.shade400, width: 1),
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        setTemaGelap ? Icons.dark_mode : Icons.light_mode,
                        color: setTemaGelap ? Colors.amber : Colors.orange,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        setTemaGelap ? "Mode Gelap Aktif" : "Mode Terang Aktif",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                  Switch(
                    value: setTemaGelap,
                    activeThumbColor: Colors.amber,
                    onChanged: (bool newValue) {
                      setState(() {
                        setTemaGelap = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
