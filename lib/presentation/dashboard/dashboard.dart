import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Dashboard extends StatelessWidget {
  const Dashboard({super.key, @required this.title, @required this.buttonText});
  
  final String? title;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title ?? 'Dashboard')),
      body: ElevatedButton(
        onPressed: () {
          context.router.pop();
        },
        child: Text(buttonText ?? 'Button'),
      ),
    );
  }
}
