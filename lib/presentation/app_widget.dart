import 'package:firstapp/application/example_provider.dart';
import 'package:firstapp/presentation/home/home.dart';
import 'package:firstapp/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    // /return MaterialApp.router(
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ExampleProvider()),
      ],
      child: MaterialApp(
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
        home: SplashScreen(),
      ),
    );
  }
}
