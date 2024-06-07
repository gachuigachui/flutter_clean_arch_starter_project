import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_starter_project/core/presentation/routes/route_error_screen.dart';

import '../screens/home.dart';
import 'route_constants.dart';

class FeatureRouter {
  //
  static Route onGenerateRoute({required RouteSettings settings}) {
    switch (settings.name) {
      case pHistoryHomeRoute:
        return _generateHistoryHomeRoute();
      case pHistoryDocumentsRoute:
        return _generateHistoryDocumentsRoute();
      case pHistoryDocumentRoute:
        return _generateHistoryDocumentRoute();
      case pHistoryItemPrintRoute:
        return _generateHistoryItemPrintRoute();

      default:
        return _generateRouteErrorRoute(settings: settings);
    }
  }

  //
  static MaterialPageRoute _generateHistoryHomeRoute() =>
      MaterialPageRoute(builder: (context) => const HistoryHomeScreen());

  //
  static MaterialPageRoute _generateHistoryDocumentsRoute() =>
      MaterialPageRoute(builder: (context) => const HistoryDocumentsScreen());

  //
  static MaterialPageRoute _generateHistoryDocumentRoute() =>
      MaterialPageRoute(builder: (context) => const HistoryDocumentScreen());

  //
  static MaterialPageRoute _generateHistoryItemPrintRoute() =>
      MaterialPageRoute(builder: (context) => const HistoryItemPrintScreen());

  //
  static MaterialPageRoute _generateRouteErrorRoute(
          {required RouteSettings settings}) =>
      MaterialPageRoute(
          builder: (context) => RouteErrorScreen(
                settings: settings,
              ));
}
