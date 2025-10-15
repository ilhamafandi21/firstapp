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
      body: Container(
        height: 500.0,
        color: const Color.fromARGB(255, 211, 255, 149),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Fasting App'),
            Text('"Neque porro quisquam lit...', style: TextStyle(fontSize: 24),),
            Text('But I must explain to you how'),
          ],
        ),
      ),

      // body: Container(
      //   color: Colors.black,
      //   margin: EdgeInsets.all(10),
      //   padding: EdgeInsets.all(10),
      //   child: Icon(
      //     Icons.health_and_safety_rounded,
      //     size: 100.0,
      //     color: const Color.fromARGB(255, 0, 201, 50),
      //   ),
      // ),
    );
  }
}
