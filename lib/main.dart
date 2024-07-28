import 'package:flutter/material.dart';
import 'package:jobizz/view/screens/set_a4_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Jobizz App',
      debugShowCheckedModeBanner: false,
      home: SetA4Screen(),
    );
  }
}
