import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobizz/core/constants/app_images.dart';
import 'package:jobizz/core/style/app_colors.dart';
import 'package:jobizz/view/widgets/custom_ellipse.dart';

class SetA1Screen extends StatelessWidget {
  const SetA1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomEllipse(),
          SvgPicture.asset(AppImages.a1),
          const Text(
            'Search your job',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Figure out your top five priorities whether\nit is company culture, salary.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.darkGrayishBlue,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      )),
    );
  }
}
