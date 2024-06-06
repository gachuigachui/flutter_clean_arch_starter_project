import 'package:flutter/material.dart';
 import 'package:flutter_clean_arch_starter_project/core/presentation/screens/root_view_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // FlutterBluePlus.setLogLevel(LogLevel.verbose, color: true);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CA Prototype',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RootViewScreen(),
    );
  }
}
