import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobizz/core/constants/app_images.dart';
import 'package:jobizz/view/screens/set_a4_screen.dart';
import 'package:jobizz/view/screens/set_b4_screen.dart';
import '../../core/app_helper/app_navigator.dart';
import '../../core/constants/app_size.dart';
import '../../core/custom_widgets/custom_text_button.dart';
import '../../core/style/app_colors.dart';
import '../widgets/custom_ellipse.dart';


class SetA3Screen extends StatelessWidget {
  const SetA3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            SvgPicture.asset(AppImages.a3),
            const Text(
              'Apply to best jobs',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'You can apply to your desirable jobs very\n quickly and easily with ease.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
const SizedBox(height: 64,),
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
              onTap: () => AppNavigator.pushRemove(context, const SetA4Screen()),
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
