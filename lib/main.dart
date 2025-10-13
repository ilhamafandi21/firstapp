import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 193, 255, 7),
        title: const Text(
          "Fasting App",
          style: TextStyle(
            color: Colors.brown,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(Icons.menu),
        ],
      
      ),
    );
  }
}
