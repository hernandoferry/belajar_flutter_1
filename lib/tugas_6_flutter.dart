import 'package:belajar_flutter_1/tugas_2_flutter.dart';
import 'package:flutter/material.dart';

class Tugas6Flutter extends StatefulWidget {
  const Tugas6Flutter({super.key});

  @override
  _Tugas6FlutterState createState() => _Tugas6FlutterState();
}

class _Tugas6FlutterState extends State<Tugas6Flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Tugas Flutter 6 (routing & navigation)"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(top: 202),
              child: Image.asset(
                "assets/images/instagram.png",
                width: 246,
                height: 75,
              ),
            ),
            SizedBox(height: 44),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 50, right: 56),
              child: Column(
                children: [
                  SizedBox(
                    height: 42,
                    width: 322,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0XFFBFBFBF),
                          ),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF6F6F6),
                        hintText: 'Phone number, username or email',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF888888),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  SizedBox(
                    height: 42,
                    width: 322,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF6F6F6),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0XFFBFBFBF),
                          ),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Color(0xFF888888),
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                        suffixIcon: const Icon(
                          Icons.visibility_off, // Ikon mata tercoret
                          color: Color(0xFF888888),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 7),
                  Padding(
                    padding: EdgeInsetsGeometry.only(left: 200),
                    child: Text(
                      'Forgotten Password ?',
                      style: TextStyle(
                        color: Color(0XFF1C82F9),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 22),
                  SizedBox(
                    height: 42,
                    width: 322,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF1C82F9),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tugas2Flutter(),
                          ),
                        );
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35.5),

                  Padding(
                    padding: EdgeInsetsGeometry.only(left: 49, right: 56),
                    child: Row(
                      children: [
                        Expanded(child: Divider()),
                        SizedBox(width: 11),
                        Text(
                          'OR',
                          style: TextStyle(
                            color: Color(0xFFBEBEBE),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 11),
                        Expanded(child: Divider()),
                      ],
                    ),
                  ),
                  SizedBox(height: 42.5),
                  Row(
                    children: [
                      Spacer(),
                      Image.asset(
                        "assets/images/Facebook.png",
                        width: 18,
                        height: 18,
                      ),
                      SizedBox(width: 3),
                      Text(
                        'Log in with Facebook',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1C82F9),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(height: 159),
                  Divider(),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        "Don't have an account ? ",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF888888),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0XFF1C82F9),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
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
