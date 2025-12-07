import 'package:flutter/material.dart';
import 'locator.dart';
import 'pages/login_page.dart';

void main() {
  setupLocator(); // ← penting
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DI & Reactive Lab',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
