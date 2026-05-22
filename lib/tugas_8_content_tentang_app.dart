import 'package:flutter/material.dart';

class Tugas8ContentTentangApp extends StatefulWidget {
  const Tugas8ContentTentangApp({super.key});

  @override
  _Tugas8ContentTentangAppState createState() =>
      _Tugas8ContentTentangAppState();
}

class _Tugas8ContentTentangAppState extends State<Tugas8ContentTentangApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          const Center(
            child: Column(
              children: [
                FlutterLogo(size: 80),
                SizedBox(height: 16),
                Text(
                  'Ini adalah tugas flutter',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text('Versi 1.0.0', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 8),
                Text(
                  'Aplikasi keren yang dibuat dengan Flutter untuk mempermudah hidup Anda.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Divider(height: 40),
          const Text(
            'Developed by',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text('Ferry'),
            subtitle: Text('Flutter Developer'),
          ),
          const Divider(height: 40),

          const Text(
            'Hubungi Kami',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ListTile(
            leading: const Icon(Icons.code),
            title: const Text('GitHub Portofolio'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('Email Dukungan'),
            subtitle: const Text('developedbyferry@email.test'),
            onTap: () {},
          ),
          AboutListTile(
            icon: const Icon(Icons.info),
            applicationName: 'Ini adalah tugas',
            applicationVersion: '1.0.0',
            applicationIcon: const FlutterLogo(),
            child: const Text('Lisensi Aplikasi'),
          ),
        ],
      ),
    );
  }
}
