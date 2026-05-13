import 'package:flutter/material.dart';

class Tugas3Flutter extends StatelessWidget {
  const Tugas3Flutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Tugas Flutter 3 (form input dan grid)"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 11),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Ex: Jhon Maer",
                    labelText: "Nama Lengkap :",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 11),
                TextField(
                  decoration: InputDecoration(
                    labelText: "No. Hp/Wa/Telp",
                    hintText: "Ex : 081123456789 / 0219876543",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 11),
                TextField(
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    hintText: "Ex : contoh@email.co.id",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 11),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Alamat",
                    hintText: "Ex : Jl.Karet No.1 Jakarta",
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
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
                        'assets/images/dodol_betawi.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      padding: EdgeInsets.all(11),
                      color: Colors.amber,
                      child: Text(
                        'Dodol Betawi',
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
    );
  }
}
