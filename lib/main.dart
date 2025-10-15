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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call, size: 30.0, color: Colors.blue),
                  SizedBox(height: 8),
                  Text(
                    'Call',
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.navigation, size: 30.0, color: Colors.blue),
                  SizedBox(height: 8),
                  Text(
                    'Route',
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share, size: 30.0, color: Colors.blue),
                  SizedBox(height: 8),
                  Text(
                    'Share',
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // body: Container(
      //   color: const Color.fromARGB(255, 98, 255, 0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Icon(Icons.health_and_safety, size: 50),
      //       Icon(Icons.food_bank, size: 50),
      //       Icon(Icons.tips_and_updates, size: 50),
      //       Icon(Icons.timelapse, size: 50),
      //     ],
      //   ),
      // ),

      // body: Container(
      //   height: 500.0,
      //   color: const Color.fromARGB(255, 211, 255, 149),
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: <Widget>[
      //       Text('Fasting App'),
      //       Text('"Neque porro quisquam lit...', style: TextStyle(fontSize: 24),),
      //       Text('But I must '),
      //     ],
      //   ),
      // ),

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
