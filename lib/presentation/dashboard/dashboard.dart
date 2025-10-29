import 'package:auto_route/auto_route.dart';
import 'package:firstapp/presentation/sign_in/sign_in_page.dart';
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
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // context.router.pop();
              Navigator.of(context).pop();
            },
            child: Text(buttonText ?? 'Button'),
          ),

          ElevatedButton(
            onPressed: () {
              // context.router.pop();
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => SignInPage()));
            },
            child: Text('Go to sign page'),
          ),
        ],
      ),
    );
  }
}
