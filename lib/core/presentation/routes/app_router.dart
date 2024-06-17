import 'package:flutter/material.dart';

import '../../../features/dashboard/presentation/routes/dashboard_router.dart';
 
import '../../constants/route_constants.dart';

abstract interface class RouterInterface {
  static Route onGenerateRoute({required RouteSettings settings}) =>
      throw "Routing not implemented.";
}

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("AppRouter:: " + "${settings.name?.split("/")[1]}");
    switch (settings.name?.split("/")[1]) {
      case dashboardRoutePrefix:
        return DashboardRouter.onGenerateRoute(settings: settings);
 
      case "/":
        return DashboardRouter.onGenerateRoute(settings: settings);
      //
      default:
        return DashboardRouter.onGenerateRoute(settings: settings);
    }
  }
}
