import 'package:belajar_flutter_1/tugas_10_flutter_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tugas10Flutter extends StatefulWidget {
  const Tugas10Flutter({super.key});

  @override
  _Tugas10FlutterState createState() => _Tugas10FlutterState();
}

class _Tugas10FlutterState extends State<Tugas10Flutter> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _emailController = TextEditingController();
  final _noHpController = TextEditingController();
  final _alamatController = TextEditingController();
  final _kotaController = TextEditingController();

  void _tampilkanDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Konfirmasi'),
          content: const Text('Apakah data yang Anda masukkan sudah benar?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _pindahKeHalamanDetail();
              },
              child: const Text('Lanjutkan'),
            ),
          ],
        );
      },
    );
  }

  void _pindahKeHalamanDetail() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Tugas10FlutterDetailPage(
          nama: _namaController.text,
          email: _emailController.text,
          noHp: _noHpController.text,
          alamat: _alamatController.text,
          kota: _kotaController.text,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _namaController.dispose();
    _emailController.dispose();
    _noHpController.dispose();
    _alamatController.dispose();
    _kotaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: RichText(
          text: TextSpan(
            style: const TextStyle(color: Colors.black, fontSize: 16),
            children: <TextSpan>[
              const TextSpan(
                text: 'Tugas 10 flutter',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextSpan(
                text: ' (Validasi Form,Dialog & Navigasi Data)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent[700],
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(labelText: 'Nama Lengkap'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nama lengkap tidak boleh kosong';
                  }
                  if (value.trim().length < 3) {
                    return 'Nama minimal harus 3 karakter';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Email tidak boleh kosong';
                  }

                  // RegEx untuk mengecek format email yang valid
                  final emailRegex = RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  );
                  if (!emailRegex.hasMatch(value.trim())) {
                    return 'Format email tidak valid (contoh: initest@email.com)';
                  }

                  return null; // Input valid
                },
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _noHpController,
                decoration: const InputDecoration(labelText: 'No. HP'),
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nomor HP tidak boleh kosong';
                  }

                  // Menghapus spasi jika ada
                  final cleanValue = value.trim();

                  // RegEx untuk memastikan hanya berisi angka
                  final phoneRegex = RegExp(r'^[0-9]+$');
                  if (!phoneRegex.hasMatch(cleanValue)) {
                    return 'Nomor HP hanya boleh berisi angka';
                  }

                  if (cleanValue.length < 9 || cleanValue.length > 13) {
                    return 'Nomor HP tidak valid (minimal 9 dan maksimal 13 digit)';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _alamatController,
                decoration: const InputDecoration(labelText: 'Alamat'),
                maxLines: 2,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Form Alamat harus disisi !";
                  }
                  if (value.length < 10) {
                    return "Jangan asal mengisi, isi alamat mu dengan benar !";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _kotaController,
                decoration: const InputDecoration(labelText: 'Kota Asal'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Kota asal wajib di isi !";
                  }
                  if (value.length < 3) {
                    return "Emang ada nama kota hanya 3 huruf ? coba isi yang benar !";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _tampilkanDialog();
                    }
                  },
                  child: const Text(
                    'Daftar',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
