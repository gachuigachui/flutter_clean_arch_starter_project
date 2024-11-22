import 'package:flutter/material.dart';
 
import '../../../../core/constants/route_constants.dart';
import '../../../../core/presentation/routes/app_router.dart';
import '../../../../core/presentation/routes/route_error_screen.dart';
import '../screens/dashboard_screen.dart';

class DashboardRouter implements RouterInterface {
  static Route onGenerateRoute({required RouteSettings settings}) {
    switch (settings.name) {
      case featureHomeRoute:
        return _generateDashboardHomeRoute();
              case featureItemDetailsRoute:
        return _generateDashboardHomeRoute();
          case featureItemActionRoute:
        return _generateFeatureItemActionRoute();
    
      
      
      
      // case "/":
      //   return _generateDashboardHomeRoute();
      default:
        return _generateDashboardRoute();
    }
  }

  static MaterialPageRoute _generateDashboardHomeRoute() =>
      MaterialPageRoute(
        builder: (context) => const DashboardScreen(),
      );
  static MaterialPageRoute _generateFeatureItemActionRoute() =>
      MaterialPageRoute(
        builder: (context) => const DashboardScreen(),
      );
  // static MaterialPageRoute _generateDashboardHomeRoute(
  //         {RouteSettings? settings}) =>
  //     MaterialPageRoute(
  //       builder: (context) => DashboardScreen(),
  //     );














      //
  static MaterialPageRoute _generateDashboardRoute({RouteSettings? settings}) =>
      MaterialPageRoute(
        builder: (context) => RouteErrorScreen(settings: settings),
      );
}
