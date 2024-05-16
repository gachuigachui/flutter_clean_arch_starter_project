import 'package:flutter/material.dart';

import 'app_router.dart';
import 'route_error_screen.dart';
 
class StudyRouter implements RouterInterface {
  static Route onGenerateRoute({required RouteSettings settings}) {
    switch (settings.name) {
      case "name":
        return _generateStudyRoute();
      default:
        return _generateStudyRoute();
    }
  }

  static MaterialPageRoute _generateStudyRoute({RouteSettings? settings}) =>
      MaterialPageRoute(
        builder: (context) => RouteErrorScreen(settings: settings),
      );
}
