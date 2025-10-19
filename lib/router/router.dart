import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeScreen, initial: true),
  ];
}


@RoutePage()
class HomeScreen extends StatefulWidget {}

