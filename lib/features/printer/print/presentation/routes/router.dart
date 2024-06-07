import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_starter_project/core/presentation/routes/route_error_screen.dart';

import '../screens/home.dart';
import 'route_constants.dart';

class FeatureRouter {
  static Route onGenerateRoute({required RouteSettings settings}) {
    switch (settings.name) {
      case featureHomeRoute:
        return _generateFeaureHomeRoute();

      default:
        return _generateRouteErrorRoute(settings: settings);
    }
  }

  static MaterialPageRoute _generateFeaureHomeRoute() =>
      MaterialPageRoute(builder: (context) => FeatureHomeScreen());
  static MaterialPageRoute _generateRouteErrorRoute(
          {required RouteSettings settings}) =>
      MaterialPageRoute(
          builder: (context) => RouteErrorScreen(
                settings: settings,
              ));
}
