import 'package:flutter/material.dart';

class Tugas4Flutter extends StatelessWidget {
  const Tugas4Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(222, 222, 2, 2),
        title: Text('Tugas Flutter  4 (ListView & ListTile)'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 11),
          Spacer(),
          Text(
            'Input Form Example',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          SizedBox(height: 11),
          TextField(
            decoration: InputDecoration(
              labelText: "Nama Lengkap",
              hintText: "Ex : Tzer Mayer",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 11),
          TextField(
            decoration: InputDecoration(
              labelText: "Alamat e-mail",
              hintText: "Ex : contoh@email.co.id",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 11),
          TextField(
            decoration: InputDecoration(
              labelText: "No.Hp/Tlp",
              hintText: "Ex : 081000222333",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 11),
          TextField(
            decoration: InputDecoration(
              labelText: "Alamat Tempat tinggal",
              hintText: "Ex : Jl.Karet No.1 Jakarta",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 11),
          TextField(
            decoration: InputDecoration(
              labelText: "Keterangan",
              hintText: "Ex : Patokan dekat warung madura 24 jam",
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 11),
          Divider(thickness: 2, color: Colors.red),
          Text(
            'List Tile Example',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/sale.png'),
            ),
            title: Text('Budi Sudarsono'),
            subtitle: Text('budi@bolasudarsono.co.id'),
            trailing: Icon(Icons.arrow_forward, color: Colors.red),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/sale.png'),
            ),
            title: Text('Budi Sudarsono'),
            subtitle: Text('budi@bolasudarsono.co.id'),
          ),

          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/sale.png'),
            ),
            title: Text('Budi Sudarsono'),
            subtitle: Text('budi@bolasudarsono.co.id'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/sale.png'),
            ),
            title: Text('Budi Sudarsono'),
            subtitle: Text('budi@bolasudarsono.co.id'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/sale.png'),
            ),
            title: Text('Budi Sudarsono'),
            subtitle: Text('budi@bolasudarsono.co.id'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/sale.png'),
            ),
            title: Text('Budi Sudarsono'),
            subtitle: Text('budi@bolasudarsono.co.id'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/sale.png'),
            ),
            title: Text('Budi Sudarsono'),
            subtitle: Text('budi@bolasudarsono.co.id'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/sale.png'),
            ),
            title: Text('Budi Sudarsono'),
            subtitle: Text('budi@bolasudarsono.co.id'),
          ),

          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/sale.png'),
            ),
            title: Text('Budi Sudarsono'),
            subtitle: Text('budi@bolasudarsono.co.id'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/sale.png'),
            ),
            title: Text('Budi Sudarsono'),
            subtitle: Text('budi@bolasudarsono.co.id'),
          ),
        ],
      ),
    );
  }
}
