import 'package:flutter/material.dart';
import 'package:wcag/accessbility_page.dart';

void main() {
  runApp(const AccessibleDemoApp());
}

class AccessibleDemoApp extends StatelessWidget {
  const AccessibleDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
      ),
      home: const AccessibleHomePage(),
    );
  }
}

