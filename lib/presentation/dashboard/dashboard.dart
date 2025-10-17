import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key, @required this.title});
  final String? title;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text( title ?? 'Dashboard')),
      body: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Back To Home'),
      ),
    );
  }
}
