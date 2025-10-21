import 'package:auto_route/auto_route.dart';
import 'package:firstapp/router/router.gr.dart';

// dart run runner_builder build --delete-conflicting--outputs

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: Home.page, initial: true),
    AutoRoute(page: Dashboard.page),
  ];
}

