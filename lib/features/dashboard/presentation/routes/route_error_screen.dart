// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../../../core/presentation/screens/base_screen.dart';
import '../../../../core/presentation/widgets/custom_app_bar.dart';

class RouteErrorScreen extends StatelessWidget {
  final RouteSettings? settings;
  const RouteErrorScreen({
    super.key,
    this.settings,
  });
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      appBar: CustomAppBar.appBar(title: const Text("Route Error")),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Unimplemented Route",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Target Route",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            Text(
              "${settings?.name}",
              style: const TextStyle(
                  fontWeight: FontWeight.normal, fontSize: 15.0),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Arguments",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            Text(
              "${settings?.arguments}",
              style: const TextStyle(
                  fontWeight: FontWeight.normal, fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}
