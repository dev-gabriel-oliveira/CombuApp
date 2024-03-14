import 'package:combu_app/widgets/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CombuApp',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
