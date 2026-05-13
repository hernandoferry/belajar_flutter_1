import 'package:flutter/material.dart';

class Tugas2Flutter extends StatelessWidget {
  const Tugas2Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 92, 82, 230),
        title: Text(
          'Detail Merchant',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 460,
                height: 150,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),

                child: Row(
                  children: [
                    SizedBox(child: Icon(Icons.email_outlined)),
                    SizedBox(width: 10),
                    Text('Email : dummymerchant@mail.com'),
                  ],
                ),
              ),
            ],
          ),

          Container(
            child: Row(
              children: [
                Spacer(),
                SizedBox(child: Icon(Icons.phone_android_outlined)),
                Text('087-xxx-xxx-xxx'),
                Spacer(),
                SizedBox(child: Icon(Icons.location_on)),
                Text('Jakarta'),
                Spacer(),
              ],
            ),
          ),

          Row(
            children: [
              Spacer(),
              Container(
                height: 100,
                width: 200,
                margin: EdgeInsets.only(top: 11),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 94, 128, 240),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 11),
                    Text(
                      'Items Terjual :',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 240, 240, 237),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '3000',
                      style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 247, 246, 245),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: 200,
                height: 100,
                margin: EdgeInsets.only(top: 11),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 11),
                    Text(
                      'Rating',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 252, 252, 251),
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      child: Row(
                        children: [
                          Spacer(),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),

          Row(
            children: [
              Spacer(),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  'Toko yang telah dipercaya sedjak 1990',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Spacer(),
            ],
          ),

          Row(
            children: [
              Spacer(),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/sale.png"),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
