import 'package:flutter/material.dart';

class Tugas5Flutter extends StatefulWidget {
  const Tugas5Flutter({super.key});

  @override
  _Tugas5FlutterState createState() => _Tugas5FlutterState();
}

class _Tugas5FlutterState extends State<Tugas5Flutter> {
  bool showTextInElevatedButton = false;
  bool btnIconToggleState = false;
  bool txtButtonTogleState = false;
  int initGestureDetector = 0;
  String statusGestureDetector = 'Belum ada aksi';
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Tugas 5 Flutter (Event handling & state management)'),
      ),
      body: Column(
        children: [
          SizedBox(height: 11),
          Card(
            elevation: 4.0,
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    '1.Elevated Button ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 2),
                  SizedBox(height: 10),
                  if (showTextInElevatedButton)
                    const Text(
                      'Hallo, Saya Sedang belajar flutter',
                      style: TextStyle(color: Colors.amber),
                    ),

                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        showTextInElevatedButton = !showTextInElevatedButton;
                      });
                    },
                    child: Text(
                      showTextInElevatedButton
                          ? "Sembunyikan Text"
                          : "Tampilkan Text",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 11),
          Card(
            elevation: 4.0,
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    '2. Icon Button ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 2),
                  SizedBox(height: 10),
                  if (btnIconToggleState)
                    const Text(
                      'Tersimpan di Favorit !',
                      style: TextStyle(color: Colors.amber),
                    ),
                  SizedBox(height: 10),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        btnIconToggleState = !btnIconToggleState;
                      });
                    },
                    icon: Icon(
                      btnIconToggleState
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color: Colors.amber,
                    ),
                  ),
                  Text(
                    'Klik tombol love ini',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 11),
          Card(
            elevation: 4.0,
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    '3. Ink Well ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 2),
                  SizedBox(height: 10),
                  InkWell(
                    splashColor: Colors.amber,
                    onTap: () {
                      print('ink well worked');
                    },
                    child: Text(
                      'boom ink well heree',
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 11),
          Card(
            elevation: 4.0,
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    '4. Gesture Detector ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 2),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "$initGestureDetector",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                      Spacer(),
                      Text(
                        statusGestureDetector,
                        style: TextStyle(color: Colors.amber),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            initGestureDetector += 1;
                            statusGestureDetector = "Status : OnTap active";
                          });
                        },
                        onDoubleTap: () {
                          setState(() {});
                          initGestureDetector += 2;
                          statusGestureDetector = "Status : OnDoubleTap active";
                        },
                        onLongPress: () {
                          setState(() {});
                          initGestureDetector += 3;
                          statusGestureDetector =
                              " Status : OnLongPress active";
                        },
                        child: Image.asset(
                          "assets/images/soto_betawi.jpeg",
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 11),
          Card(
            elevation: 4.0,
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    '5. Text Button ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 2),
                  SizedBox(height: 10),
                  Text(
                    "Culpa pariatur voluptate do laboris esse cillum Lorem Lorem culpa reprehenderit aute aliquip ipsum. Laborum cillum dolor in officia cupidatat elit excepteur laborum Lorem elit nostrud et. Fugiat ad quis non quis ipsum adipisicing culpa nisi. Sunt elit nulla aliqua ut eu laborum ad tempor. Anim ex sit ullamco laboris deserunt. Ut id ea consequat pariatur dolore quis. Magna magna do Lorem nostrud labore et culpa irure enim.",
                    style: TextStyle(color: Colors.white),
                    maxLines: _isExpanded ? null : 2,
                    overflow: _isExpanded
                        ? TextOverflow.visible
                        : TextOverflow.ellipsis,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                    child: Text(
                      _isExpanded ? 'Tutup' : 'Tampilkan...',
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              setState(() {
                initGestureDetector--;
              });
            },
            child: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
