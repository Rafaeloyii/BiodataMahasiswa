import 'package:flutter/material.dart';
import 'stateless.dart';
import 'stateful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Latihan 1',
      home: DefaultTabController(
        length: 2, // 2 Tab untuk Stateless dan Stateful
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tugas Latihan 1'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.badge), text: 'Stateless'),
                Tab(icon: Icon(Icons.add_circle), text: 'Stateful'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              StatelessApp(), // Menampilkan isi dari stateless.dart
              StatefulApp(),  // Menampilkan isi dari stateful.dart
            ],
          ),
        ),
      ),
    );
  }
}