import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_starter_project/core/presentation/screens/root_view_screen.dart';
import 'package:flutter_clean_arch_starter_project/features/dashboard/presentation/screens/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CA Prototype',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   RootViewScreen(),
    );
  }
}
 