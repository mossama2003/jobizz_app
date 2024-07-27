import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobizz/core/custom_widgets/custom_text_number_form_field.dart';
import 'package:jobizz/view/screens/verify_screen.dart';

import '../../core/app_helper/app_navigator.dart';
import '../../core/app_helper/app_validators.dart';
import '../../core/constants/app_images.dart';
import '../../core/constants/app_size.dart';
import '../../core/custom_widgets/custom_text_button.dart';
import '../../core/custom_widgets/custom_text_form_field.dart';
import '../../core/style/app_colors.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  int selectedIndex = 0; // 0 for 'E-mail', 1 for 'Mobile Number'
  String selectedCountryCode = '+1';

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
              'Forget Password',
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
              'Enter your email or phone number, we will\nsend you verification code',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: AppSize.textScale(context, 14),
                color: AppColors.darkGray,
              ),
            ),
            const Spacer(),
            Container(
              width: 284,
              height: 48,
              decoration: const BoxDecoration(
                  color: AppColors.lightGrayishBlue,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      selectedIndex = 0;
                    }),
                    child: Container(
                      width: 134.5,
                      height: 36,
                      decoration: BoxDecoration(
                          color: selectedIndex == 0
                              ? AppColors.white
                              : AppColors.lightGrayishBlue,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16))),
                      child: const Center(
                        child: Text(
                          'E-mail',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Circular Std',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () => setState(() {
                      selectedIndex = 1;
                    }),
                    child: Container(
                      width: 134.5,
                      height: 36,
                      decoration: BoxDecoration(
                          color: selectedIndex == 1
                              ? AppColors.white
                              : AppColors.lightGrayishBlue,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16))),
                      child: const Center(
                        child: Text(
                          'Mobile Number',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Circular Std',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSize.heightScale(context, 40),
            ),

            /// If For E-mail
            if (selectedIndex == 0)
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.heightScale(context, 24)),
                child: CustomTextFormField(
                  hint: 'E-mail',
                  validator: (val) => CustomAppValidators.email(value: val),
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: AppSize.textScale(context, 14),
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkGray,
                  ),
                  greyIcon: SvgPicture.asset(
                    AppImages.emailGrey,
                    fit: BoxFit.scaleDown,
                  ),
                  blackIcon: SvgPicture.asset(
                    AppImages.emailBlack,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),

            /// If For Mobile Number
            if (selectedIndex == 1)
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.heightScale(context, 24)),
                child:
                CustomTextNumberFormField(
                  hint: 'Mobile Number',
                  validator: (val) =>
                      CustomAppValidators.phoneNumber(value: val),
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: AppSize.textScale(context, 14),
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkGray,
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
                text: 'Send code',
                onTap: () => AppNavigator.push(context, const VerifyScreen()),
                radius: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
