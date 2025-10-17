import 'package:firstapp/widgets/icon_with_label.dart';
import 'package:flutter/material.dart';

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
              IconWithLabel(
                icon: Icons.call,
                text: 'Call',
                textColor: Colors.blue,
                iconColor: Colors.green,
              ),
              IconWithLabel(
                icon: Icons.navigation,
                text: 'Route',
                textColor: Colors.blue,
                iconColor: Colors.green,
              ),
              IconWithLabel(
                icon: Icons.share,
                text: 'Share',
                textColor: Colors.blue,
                iconColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
