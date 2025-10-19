import 'package:auto_route/auto_route.dart';
import 'package:firstapp/presentation/dashboard/dashboard.dart';
import 'package:firstapp/presentation/home/home.dart';

part 'app_router.gr.dart';  // wajib untuk generate

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter  {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomePage, initial: true),       // perhatikan HomePage, bukan Home
        AutoRoute(page: DashboardPage),                // DashboardPage
      ];
}
