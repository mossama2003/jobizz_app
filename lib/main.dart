import 'package:flutter/material.dart';
import 'package:jobizz/core/style/app_theme.dart';
import 'package:jobizz/view/screens/register_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      theme: AppTheme.lightTheme,
      title: 'Jobizz App',
      home: const RegisterScreen(),
    );
  }
}