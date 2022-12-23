import 'package:flutter/material.dart';
import 'package:job_app_ui/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job App UI',
      home: HomePage(),
    );
  }
}
