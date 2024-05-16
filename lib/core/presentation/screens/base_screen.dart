// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final bool useSafeArea;
  final Widget body;
  final AppBar? appBar;
  final Drawer? drawer;
  final FloatingActionButton? floatingActionButton;
  final BottomNavigationBar? bottomNavigationBar;
  const BaseScreen({
    super.key,
    this.useSafeArea = true,
    required this.body,
    this.appBar,
      this.drawer,
    this.floatingActionButton,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return useSafeArea
        ? SafeArea(
            child: Scaffold(
            body: body,
            appBar: appBar,
            drawer: drawer,
            floatingActionButton: floatingActionButton,
            bottomNavigationBar: bottomNavigationBar,
          ))
        : Scaffold(
            body: body,
            appBar: appBar,
            drawer: drawer,
            floatingActionButton: floatingActionButton,
            bottomNavigationBar: bottomNavigationBar,
          );
  }
}
