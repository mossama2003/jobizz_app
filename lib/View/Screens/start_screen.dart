import 'package:flutter/material.dart';
import 'package:jobizz/core/constants/app_images.dart';
import 'package:jobizz/core/style/app_colors.dart';
import 'package:jobizz/view/Screens/set_a1_screen.dart';

import '../../core/app_helper/app_navigator.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      AppNavigator.pushRemove(context, const SetA1Screen());
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Image.asset(AppImages.start),
      ),
    );
  }
}



