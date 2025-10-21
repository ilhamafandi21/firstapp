import 'package:firstapp/presentation/home/home.dart';
import 'package:flutter/material.dart';
// import 'router/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    // /return MaterialApp.router(
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // routerConfig: _appRouter.config(),
      home: Home(),
    );
  }
}
