import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobizz/core/app_helper/app_navigator.dart';
import 'package:jobizz/core/constants/app_images.dart';
import 'package:jobizz/core/constants/app_size.dart';
import 'package:jobizz/core/custom_widgets/custom_text_button.dart';
import 'package:jobizz/core/style/app_colors.dart';
import 'package:jobizz/view/screens/set_b4_screen.dart';
import 'package:jobizz/view/widgets/custom_ellipse.dart';

class SetB1Screen extends StatelessWidget {
  const SetB1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CustomEllipse(),
            Padding(padding: EdgeInsets.only(
              left: AppSize.widthScale(context, 49),
              right: AppSize.widthScale(context, 31),
              bottom: AppSize.heightScale(context, 44),
            ),
            child: Column(
              children: [
                SvgPicture.asset(AppImages.b1),
                Text(
                  'Search your dream\njob fast and ease',
                  style: TextStyle(
                    fontFamily: 'Circular Std',
                    fontSize: AppSize.textScale(context, 33),
                  ),
                ),
                SizedBox(height: AppSize.heightScale(context, 16)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Figure out your top five priorities -- \nwhether it is company culture, salary\nor a specific job position.',
                    style: TextStyle(
                      color: AppColors.darkGrayishBlue,
                      fontFamily: 'Circular Std',
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.textScale(context, 16),
                    ),
                  ),
                ),
                const SizedBox(height: 64),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => AppNavigator.pushRemove(context, const SetB4Screen()),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: AppColors.black.withOpacity(0.3),
                          fontFamily: 'Poppins',
                          fontSize: AppSize.textScale(context, 16),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      child: CustomTextButton(
                        text: 'Next',
                        onTap: () => AppNavigator.pushRemove(context, const SetB4Screen()),
                        radius: 5,
                      ),
                    )
                  ],
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
