import 'package:building_layouts/screens/intro_creen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => IntroScreen(),
      },
      initialRoute: "/",
    );
  }
}
