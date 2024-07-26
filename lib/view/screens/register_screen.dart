import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobizz/core/constants/app_images.dart';
import 'package:jobizz/core/constants/app_size.dart';
import 'package:jobizz/core/custom_widgets/custom_text_button_form_field.dart';
import 'package:jobizz/core/custom_widgets/custom_text_form_field.dart';
import 'package:jobizz/core/style/app_colors.dart';
import 'package:jobizz/core/app_helper/app_validators.dart';
import 'package:jobizz/core/app_helper/app_navigator.dart';
import 'package:jobizz/view/screens/log_in_screen.dart';

class Visibility {
  static bool isVisible = true;

  static void changeVisibility() {
    isVisible = !isVisible;
  }
}

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  void changeVisibility() {
    setState(() {
      Visibility.changeVisibility();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppSize.heightScale(context, 16),
              horizontal: AppSize.widthScale(context, 24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(AppImages.backArrow),
                ),
                SizedBox(
                  height: AppSize.heightScale(context, 21),
                ),
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
                  height: AppSize.heightScale(context, 8),
                ),
                Text(
                  'Registration 👍',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: AppSize.textScale(context, 24),
                    color: AppColors.black,
                  ),
                ),
                SizedBox(
                  height: AppSize.heightScale(context, 7),
                ),
                Text(
                  'Let’s Register. Apply to jobs!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: AppSize.textScale(context, 14),
                    color: AppColors.darkGray,
                  ),
                ),
                SizedBox(
                  height: AppSize.heightScale(context, 31),
                ),
                CustomTextFormField(
                  hint: 'Full Name',
                  validator: (val) => CustomAppValidators.required(value: val),
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: AppSize.textScale(context, 14),
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkGray,
                  ),
                  greyIcon: SvgPicture.asset(
                    AppImages.personGrey,
                    fit: BoxFit.scaleDown,
                  ),
                  blackIcon: SvgPicture.asset(
                    AppImages.personBlack,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(
                  height: AppSize.heightScale(context, 16),
                ),
                CustomTextFormField(
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
                SizedBox(
                  height: AppSize.heightScale(context, 16),
                ),
                CustomTextFormField(
                  hint: 'Password',
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
                SizedBox(
                  height: AppSize.heightScale(context, 16),
                ),
                CustomTextFormField(
                  hint: 'Confirm Password',
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
                SizedBox(
                  height: AppSize.heightScale(context, 32),
                ),
                CustomTextButtonFormField(
                  text: 'Register',
                  onTap: () {},
                  radius: 5,
                ),
                SizedBox(
                  height: AppSize.heightScale(context, 32),
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        height: 0.5,
                        color: AppColors.darkGray,
                        indent: 5,
                        endIndent: 10,
                      ),
                    ),
                    Text(
                      'Or continue with',
                      style: TextStyle(
                        fontSize: AppSize.textScale(context, 13),
                        fontFamily: 'Circular Std',
                        color: AppColors.darkGray,
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        height: 0.5,
                        color: AppColors.darkGray,
                        indent: 10,
                        endIndent: 5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSize.heightScale(context, 32),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.black.withOpacity(0.1),
                                  spreadRadius: 0,
                                  blurRadius: 20,
                                  offset: const Offset(0, 4))
                            ]),
                        child: SvgPicture.asset(
                          AppImages.apple,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: AppSize.widthScale(context, 24),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.black.withOpacity(0.1),
                                  spreadRadius: 0,
                                  blurRadius: 20,
                                  offset: const Offset(0, 4))
                            ]),
                        child: SvgPicture.asset(
                          AppImages.google,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: AppSize.widthScale(context, 24),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.black.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 20,
                                offset: const Offset(0, 4))
                          ],
                        ),
                        child: SvgPicture.asset(
                          AppImages.facebook,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSize.heightScale(context, 32),
                ),
                GestureDetector(
                  onTap: () => AppNavigator.push(context, const LogInScreen()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account? ',
                        style: TextStyle(
                          fontSize: AppSize.textScale(context, 14),
                          fontFamily: 'Circular Std',
                          color: AppColors.silver,
                        ),
                      ),
                      Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: AppSize.textScale(context, 14),
                          fontFamily: 'Circular Std',
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
