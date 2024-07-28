import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobizz/core/app_helper/app_navigator.dart';
import 'package:jobizz/core/constants/app_images.dart';
import 'package:jobizz/core/constants/app_size.dart';
import 'package:jobizz/core/custom_widgets/custom_text_button.dart';
import 'package:jobizz/core/style/app_colors.dart';
import 'package:jobizz/view/screens/set_b1_screen.dart';
import 'package:jobizz/view/widgets/custom_ellipse.dart';

class SetA4Screen extends StatelessWidget {
  const SetA4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CustomEllipse(),
            SvgPicture.asset(AppImages.a4),
            Text(
              'Make your career',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: AppSize.textScale(context, 28),
              ),
            ),
            SizedBox(height: AppSize.heightScale(context, 16)),
            Text(
              'We help you find your dream job based\non your skill set, location, demand.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.darkGrayishBlue,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w200,
                fontSize: AppSize.textScale(context, 15),
              ),
            ),
            SizedBox(height: AppSize.heightScale(context, 56)),

            /// ToDo

            SizedBox(height: AppSize.heightScale(context, 72)),
            Padding(
              padding: EdgeInsets.only(
                right: AppSize.widthScale(context, 40),
                left: AppSize.widthScale(context, 40),
                bottom: AppSize.heightScale(context, 42),
              ),
              child: CustomTextButton(
                text: 'Explore',
                onTap: () => AppNavigator.pushRemove(context, const SetB1Screen()),
                radius: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
