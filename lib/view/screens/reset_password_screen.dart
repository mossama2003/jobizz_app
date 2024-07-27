import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_helper/app_navigator.dart';
import '../../core/app_helper/app_validators.dart';
import '../../core/constants/app_images.dart';
import '../../core/constants/app_size.dart';
import '../../core/custom_widgets/custom_text_button.dart';
import '../../core/custom_widgets/custom_text_form_field.dart';
import '../../core/style/app_colors.dart';

class Visibility {
  static bool isVisible = true;

  static void changeVisibility() {
    isVisible = !isVisible;
  }
}

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  void changeVisibility() {
    setState(() {
      Visibility.changeVisibility();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: AppSize.widthScale(context, 18),
                top: AppSize.heightScale(context, 16),
              ),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: GestureDetector(
                  onTap: () => AppNavigator.pop(context),
                  child: SvgPicture.asset(AppImages.backArrow),
                ),
              ),
            ),
            const Spacer(),
            Text(
              'Jôbizz',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: AppSize.textScale(context, 22),
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(
              height: AppSize.heightScale(context, 35),
            ),
            Text(
              'Reset Password',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: AppSize.textScale(context, 24),
                color: AppColors.black,
              ),
            ),
            SizedBox(
              height: AppSize.heightScale(context, 17),
            ),
            Text(
              'Enter your new password and confirm the\nnew password to reset password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: AppSize.textScale(context, 14),
                color: AppColors.darkGray,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomTextFormField(
                hint: 'New Password',
                validator: (val) => CustomAppValidators.password(value: val),
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: AppSize.textScale(context, 14),
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkGray,
                ),
                secureText: Visibility.isVisible,
                greyIcon: SvgPicture.asset(
                  AppImages.passwordGrey,
                  fit: BoxFit.scaleDown,
                ),
                blackIcon: SvgPicture.asset(
                  AppImages.passwordBlack,
                  fit: BoxFit.scaleDown,
                ),
                suffix: GestureDetector(
                  onTap: () => changeVisibility(),
                  child: SvgPicture.asset(
                    Visibility.isVisible
                        ? AppImages.visibility
                        : AppImages.visibilityOff,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppSize.heightScale(context, 16),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomTextFormField(
                hint: 'Confirm New Password',
                validator: (val) => CustomAppValidators.password(value: val),
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: AppSize.textScale(context, 14),
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkGray,
                ),
                secureText: Visibility.isVisible,
                greyIcon: SvgPicture.asset(
                  AppImages.passwordGrey,
                  fit: BoxFit.scaleDown,
                ),
                blackIcon: SvgPicture.asset(
                  AppImages.passwordBlack,
                  fit: BoxFit.scaleDown,
                ),
                suffix: GestureDetector(
                  onTap: () => changeVisibility(),
                  child: SvgPicture.asset(
                    Visibility.isVisible
                        ? AppImages.visibility
                        : AppImages.visibilityOff,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(
                left: AppSize.widthScale(context, 24),
                right: AppSize.widthScale(context, 24),
                bottom: AppSize.heightScale(context, 47),
              ),
              child: CustomTextButton(
                text: 'Reset Password',
                onTap: () {},
                radius: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
