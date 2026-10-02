import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Layout Flutter',
      theme: ThemeData(
        // Digit terakhir NIM genap (4) -> Colors.amber[100]
        scaffoldBackgroundColor: Colors.amber[100],
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ProfileCard(
          nama: 'Rafi Adriyan Ramadhan',
          nim: '20240801044',
          hobi: 'nonton anime',
          skorAktivitas: 94, // Hasil perhitungan 44 + 50
        ),
      ),
    );
  }
}