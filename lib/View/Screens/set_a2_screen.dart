import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobizz/view/Screens/set_a3_screen.dart';
import 'package:jobizz/view/screens/set_a4_screen.dart';

import '../../core/app_helper/app_navigator.dart';
import '../../core/constants/app_images.dart';
import '../../core/constants/app_size.dart';
import '../../core/custom_widgets/custom_text_button.dart';
import '../../core/style/app_colors.dart';
import '../widgets/custom_ellipse.dart';

class SetA2Screen extends StatelessWidget {
  const SetA2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomEllipse(),
            SvgPicture.asset(AppImages.a2),
            const Text(
              'Browse jobs list',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'Our job list include several  industries, so\nyou can find the best job for you.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(45.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => AppNavigator.pushRemove(context, const SetA4Screen()),
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: AppColors.darkGrayishBlue,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: CustomTextButton(
                      text: 'Next',
                      onTap: () => AppNavigator.pushRemove(context, const SetA3Screen()),
                      radius: 5,
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
