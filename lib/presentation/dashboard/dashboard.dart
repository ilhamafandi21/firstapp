import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key, @required this.title, this.buttonText});
  final String? title;
  final String? buttonText = 'Back To Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title ?? 'Dashboard')),
      body: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text(buttonText ?? 'No Title'),
      ),
    );
  }
}
