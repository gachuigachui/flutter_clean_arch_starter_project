import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_starter_project/core/presentation/routes/route_error_screen.dart';

import '../screens/home.dart';
import 'route_constants.dart';

class TemplatesRouter {
  static Route onGenerateRoute({required RouteSettings settings}) {
    switch (settings.name) {
      case templatesHomeRoute:
        return _generateTemplatesHomeRoute();
      case templateGalleryRoute:
        return _generateTemplateGalleryRoute();
      case templateTemplateRoute:
        return _generateTemplateTemplateRoute();
      case templatePreviewRoute:
        return _generateTemplatePreviewRoute();
      case templatesHomeRoute:
        return _generateTemplatesHomeRoute();

      default:
        return _generateRouteErrorRoute(settings: settings);
    }
  }

  static MaterialPageRoute _generateTemplateGalleryRoute() =>
      MaterialPageRoute(builder: (context) => TemplateGalleryScreen());
  static MaterialPageRoute _generateTemplateTemplateRoute() =>
      MaterialPageRoute(builder: (context) => const TemplateTemplateScreen());
  static MaterialPageRoute _generateTemplatePreviewRoute() =>
      MaterialPageRoute(builder: (context) => const TemplatePreviewScreen());

  static MaterialPageRoute _generateTemplatesHomeRoute() =>
      MaterialPageRoute(builder: (context) => const TemplatesHomeScreen());

  static MaterialPageRoute _generateFeaureHomeRoute() =>
      MaterialPageRoute(builder: (context) => const TemplatesHomeScreen());

  static MaterialPageRoute _generateRouteErrorRoute(
          {required RouteSettings settings}) =>
      MaterialPageRoute(
          builder: (context) => RouteErrorScreen(
                settings: settings,
              ));
}
