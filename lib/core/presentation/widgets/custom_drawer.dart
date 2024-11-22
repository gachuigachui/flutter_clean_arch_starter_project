// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  static Drawer drawer({
      Widget? title,
    Widget? flexibleSpace,
    Widget? leading,
    List<Widget>? actions,
    double elevation = 4.0,
    Color? backgroundColor,
    Color? foregroundColor,
  }) =>
      const Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Text("Clean App"),
                ],
              ),
            ),
            
          ],
        ),
      );
}
