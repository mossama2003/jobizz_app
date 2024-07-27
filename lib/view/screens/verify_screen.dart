import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobizz/core/constants/app_images.dart';
import 'package:jobizz/view/screens/reset_password_screen.dart';
import 'package:pinput/pinput.dart';

import '../../core/app_helper/app_navigator.dart';
import '../../core/constants/app_size.dart';
import '../../core/custom_widgets/custom_text_button.dart';
import '../../core/style/app_colors.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 52,
      height: 52,
      textStyle: const TextStyle(
        color: AppColors.black,
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.darkGray),
        borderRadius: BorderRadius.circular(12),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.mediumSeaGreen),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        border: Border.all(color: AppColors.black),
      ),
    );

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
              'Verify Code',
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
              'Enter your verification code from your email\nor phone number that we’ve sent',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: AppSize.textScale(context, 14),
                color: AppColors.darkGray,
              ),
            ),
            const Spacer(),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              validator: (s) {
                return s == '2222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(
                left: AppSize.widthScale(context, 24),
                right: AppSize.widthScale(context, 24),
                bottom: AppSize.heightScale(context, 128),
              ),
              child: CustomTextButton(
                text: 'Verify',
                onTap: () =>
                    AppNavigator.push(context, const ResetPasswordScreen()),
                radius: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
