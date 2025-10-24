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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 236, 226, 226),
          // contrastLevel: 1,
        ),
        // useMaterial3: true,
        // useSystemColors: true,
      ),
      // routerConfig: _appRouter.config(),
      home: Home(),
    );
  }
}
