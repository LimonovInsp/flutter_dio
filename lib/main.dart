import 'package:flutter/material.dart';
import 'package:flutter_http/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Http request',
      home: const HomePage(),
    );
  }
}
