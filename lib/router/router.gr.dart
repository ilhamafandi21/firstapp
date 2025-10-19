
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:firstapp/router/router.dart' as _i1;

/// generated route for
/// [_i1.HomeRoute]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i2.PageInfo page = _i2.PageInfo(
    name,
    builder: (data) {
      return _i1.HomeRoute();
    },
  );
}
