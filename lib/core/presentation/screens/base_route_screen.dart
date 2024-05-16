import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_starter_project/core/presentation/screens/root_view_screen.dart';

 
class BaseRouteScreen extends StatefulWidget {
  const BaseRouteScreen({super.key});

  @override
  State<BaseRouteScreen> createState() => BaseRouteScreenState();
}

class BaseRouteScreenState extends State<BaseRouteScreen> {
  @override
  Widget build(BuildContext context) {
    // route based on auth status
    return RootViewScreen();
  }
}
