import 'package:flutter/material.dart';
import 'package:jobizz/view/Screens/set_a1_screen.dart';
import 'package:jobizz/view/Screens/set_a2_screen.dart';
import 'package:jobizz/view/Screens/set_a3_screen.dart';
import 'package:jobizz/view/Screens/start_screen.dart';
import 'package:jobizz/view/screens/set_a4_screen.dart';
import 'package:jobizz/view/screens/set_b1_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jobizz App',
      home: SetA3Screen(),
    );
  }
}
