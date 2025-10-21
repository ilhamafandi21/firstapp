// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
<<<<<<< HEAD
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:firstapp/router/router.dart' as _i1;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);
=======
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:firstapp/presentation/dashboard/dashboard.dart' as _i1;
import 'package:firstapp/presentation/home/home.dart' as _i2;
import 'package:flutter/material.dart' as _i4;

/// generated route for
/// [_i1.Dashboard]
class Dashboard extends _i3.PageRouteInfo<DashboardArgs> {
  Dashboard({
    _i4.Key? key,
    String? title,
    String? buttonText,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         Dashboard.name,
         args: DashboardArgs(key: key, title: title, buttonText: buttonText),
         initialChildren: children,
       );
>>>>>>> ddbe66c (21 oktober 2025)

  static const String name = 'Dashboard';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
<<<<<<< HEAD
      return _i1.HomeScreen();
=======
      final args = data.argsAs<DashboardArgs>(
        orElse: () => const DashboardArgs(),
      );
      return _i1.Dashboard(
        key: args.key,
        title: args.title,
        buttonText: args.buttonText,
      );
    },
  );
}

class DashboardArgs {
  const DashboardArgs({this.key, this.title, this.buttonText});

  final _i4.Key? key;

  final String? title;

  final String? buttonText;

  @override
  String toString() {
    return 'DashboardArgs{key: $key, title: $title, buttonText: $buttonText}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DashboardArgs) return false;
    return key == other.key &&
        title == other.title &&
        buttonText == other.buttonText;
  }

  @override
  int get hashCode => key.hashCode ^ title.hashCode ^ buttonText.hashCode;
}

/// generated route for
/// [_i2.Home]
class Home extends _i3.PageRouteInfo<void> {
  const Home({List<_i3.PageRouteInfo>? children})
    : super(Home.name, initialChildren: children);

  static const String name = 'Home';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.Home();
>>>>>>> ddbe66c (21 oktober 2025)
    },
  );
}
