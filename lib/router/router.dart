import 'package:auto_route/auto_route.dart';
import 'package:firstapp/presentation/dashboard/dashboard.dart';
import 'package:firstapp/presentation/home/home.dart';


part 'app_router.gr.dart';  // wajib untuk generate

// flutter package pub run lean_builder watch --delete-conflicting-outputs

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Home, initial: true),
        AutoRoute(page: Dashboard),
      ];
}
