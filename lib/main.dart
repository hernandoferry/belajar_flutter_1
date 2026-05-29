// import 'package:belajar_flutter_1/tugas_9_flutter.dart';
import 'package:belajar_flutter_1/database/preference_handler.dart';
import 'package:belajar_flutter_1/tugas_11_flutter.dart';
// import 'package:belajar_flutter_1/tugas_10_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // memastikan semuanya sudah berjalan terlebih dahulu
  await initializeDateFormatting('id_ID', null); //jalankan inisialisasi
  await PreferenceHandler.init(); //panggil class preference handler
  runApp(const MyApp()); // jalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      // home: const Tugas2Flutter(),
      //home: const MyHomePage(title: 'Profil Saya'),
      //home: const Tugas4Flutter(),
      //home: const Tugas3Flutter(),
      //home: const Tugas5Flutter(),
      // home: const Tugas6Flutter(),
      // home: const Tugas7Flutter(),
      // home: const Tugas9Flutter(),
      home: const Tugas11Flutter(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final List<Map<String, String>> dataTugas = const [
  {"namaTugas": "Tugas 1 Fundamental Dart", "status": "Selesai", "link": "B"},
  {"namaTugas": "Tugas 2 Fundamental Dart", "status": "Selesai", "link": "S"},
  {"namaTugas": "Tugas 3 flutter widget", "status": "Selesai", "link": "A"},
  {
    "namaTugas": "Tugas 4 flutter widget layouting",
    "status": "Belum Dikerjakan",
    "link": "R",
  },
  {
    "namaTugas": "Tugas 5 flutter widget layouting",
    "status": "Belum Dikerjakan",
    "link": "",
  },
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: 370,
                    height: 150,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Icon(
                            Icons.account_circle,
                            size: 70,
                            color: Colors.white,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Ferry Hernando',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        width: 400,
                        height: 50,
                        color: const Color.fromARGB(255, 57, 120, 238),
                        child: Row(
                          children: [
                            SizedBox(height: 5),
                            Spacer(),
                            Text(
                              'Daftar Tugas',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          Row(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: 480,
                height: 400,
                child: ListView.builder(
                  itemCount: dataTugas.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(20),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),

                        title: Text(
                          dataTugas[index]["namaTugas"] ?? 'data kosong',
                        ),

                        subtitle: Text(
                          dataTugas[index]['status'] ?? '00',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
