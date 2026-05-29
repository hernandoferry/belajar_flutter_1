import 'package:belajar_flutter_1/database/preference_handler.dart';
import 'package:belajar_flutter_1/tugas_2_flutter.dart';
import 'package:belajar_flutter_1/tugas_6_flutter.dart';
import 'package:flutter/material.dart';

class Tugas11Flutter extends StatefulWidget {
  const Tugas11Flutter({super.key});

  @override
  _Tugas11FlutterState createState() => _Tugas11FlutterState();
}

class _Tugas11FlutterState extends State<Tugas11Flutter>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Tentukan kurva gerakan (Curves.easeIn untuk efek memudar halus)
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    // Jalankan animasi maju (dari nilai 0.0 ke 1.0)
    _controller.forward();

    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;

    if (PreferenceHandler.isLogin) {
      // Navigasi bawaan Flutter untuk pindah halaman dan menghapus halaman sebelumnya
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const Tugas2Flutter()),
        (route) =>
            false, // Menghapus semua riwayat halaman (splash screen ditutup permanen)
      );
    } else {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const Tugas6Flutter()),
        (route) => false,
      );
    }
  }

  @override
  void dispose() {
    // Wajib matikan controller saat widget dihancurkan agar tidak terjadi kebocoran memori
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: const TextStyle(color: Colors.black, fontSize: 16),
            children: <TextSpan>[
              const TextSpan(
                text: 'Tugas 11 flutter',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextSpan(
                text: ' (Implementasi Shared preference)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),

            AnimatedBuilder(
              animation: _animation,
              child: const Text(
                "Hallo, Splash Screen",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              builder: (context, child) {
                return Opacity(opacity: _animation.value, child: child);
              },
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
