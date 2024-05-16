// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? title;
  final Widget? flexibleSpace;
  final Widget? leading;
  final List<Widget>? actions;
  final double elevation;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const CustomAppBar({
    required this.title,
    this.flexibleSpace,
    this.leading,
    this.actions,
    this.elevation = 4.0, // Default elevation value
    this.backgroundColor,
    this.foregroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
        child: Text("Use the static reference CustomAppBar.appBar()."));
  }

  static AppBar appBar({
    required Widget title,
    Widget? flexibleSpace,
    Widget? leading,
    List<Widget>? actions,
    double elevation = 4.0,
    Color? backgroundColor,
    Color? foregroundColor,
  }) {
    return AppBar(
      title: title,
      flexibleSpace: flexibleSpace,
      leading: leading,
      actions: actions,
      elevation: elevation,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
    );
  }
}
