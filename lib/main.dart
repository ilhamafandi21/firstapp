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
          Icon(Icons.account_circle, color: Colors.brown),
          Icon(Icons.settings),
        ],
      ),
      body: Center(
        child: Container(
          alignment: AlignmentGeometry.center,
          color: Colors.grey[200],
          width: double.infinity,
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconWithLabel(icon: Icons.call, text: 'Call'),
              IconWithLabel(icon: Icons.navigation, text: 'Route'),
              IconWithLabel(),
            ],
          ),
        ),
      ),
    );
  }
}

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({super.key, @required this.icon, @required this.text});

  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon ?? Icons.error, size: 30.0, color: Colors.blue),
        SizedBox(height: 8),
        Text(text!, style: TextStyle(fontSize: 12, color: Colors.blue)),
      ],
    );
  }
}
