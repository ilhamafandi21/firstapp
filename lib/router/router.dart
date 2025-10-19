import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeScreen, initial: true),
        AutoRoute(page: DashboardScreen),
  ];
}

@RoutePage()
class HomeScreen extends StatefulWidget {}

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Home')),
    );
  }
}