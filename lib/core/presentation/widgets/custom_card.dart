// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  const CustomCard({
    super.key,
    required this.child,
    this.margin = const EdgeInsets.all(0.0),
    this.padding = const EdgeInsets.all(6.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      // width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.lime,
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.75),
                offset: const Offset(1, 1),
                blurRadius: .06)
          ]),
      child: child,
    );
  }
}
