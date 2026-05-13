import 'package:flutter/material.dart';

class Tugas3Flutter extends StatelessWidget {
  const Tugas3Flutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> dataListGambar = [
      {'nama': 'Dodol Betawi', 'gambar': 'assets/images/dodol_betawi.jpg'},
      {
        'nama': 'Kerak Telor',
        'gambar':
            'assets/images/kerak_telor.jpg', // Ganti sesuai nama file Anda
      },
      {
        'nama': 'Soto Betawi',
        'gambar':
            'assets/images/soto_betawi.jpeg', // Ganti sesuai nama file Anda
      },
      {
        'nama': 'Semur Jengkol',
        'gambar':
            'assets/images/semur_jengkol.jpeg', // Ganti sesuai nama file Anda
      },

      {
        'nama': 'Selendang Mayang',
        'gambar':
            'assets/images/selendang_mayang.png', // Ganti sesuai nama file Anda
      },
      {
        'nama': 'Kue Rangi',
        'gambar': 'assets/images/kue_rangi.jpg', // Ganti sesuai nama file Anda
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Tugas Flutter 3 (form input dan grid)"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: "Ex: Jhon Maer",
                labelText: "Nama Lengkap :",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 11),
            const TextField(
              decoration: InputDecoration(
                labelText: "No. Hp/Wa/Telp :",
                hintText: "Ex : 081123456789 / 0219876543",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 11),
            const TextField(
              decoration: InputDecoration(
                labelText: "E-mail :",
                hintText: "Ex : contoh@email.co.id",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 11),
            const TextField(
              decoration: InputDecoration(
                labelText: "Alamat :",
                hintText: "Ex : Jl.Karet No.1 Jakarta",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: dataListGambar.length,
              itemBuilder: (context, index) {
                final gambar = dataListGambar[index];
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.amber,
                        child: Image.asset(
                          gambar['gambar'] ?? 'no-image',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 45,
                        padding: const EdgeInsets.all(11),
                        color: Colors.amber,
                        child: Text(
                          gambar['nama'] ?? 'no-name-produk',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
