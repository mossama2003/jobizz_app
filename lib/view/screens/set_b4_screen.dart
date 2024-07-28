import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/app_images.dart';
import '../../core/constants/app_size.dart';
import '../../core/custom_widgets/custom_text_button.dart';
import '../../core/style/app_colors.dart';
import '../widgets/custom_ellipse.dart';

class SetB4Screen extends StatelessWidget {
  const SetB4Screen({super.key});

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
                    SvgPicture.asset(AppImages.b4),
                    Text(
                      'Make your dream\ncareer with job',
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontWeight: FontWeight.bold,
                        fontSize: AppSize.textScale(context, 34),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'We help you find your dream job\naccording to your skillset, location &\npreference to build your career.',
                      style: TextStyle(
                        color: AppColors.darkGrayishBlue,
                        fontFamily: 'Circular Std',
                        fontSize: AppSize.textScale(context, 16),
                      ),
                    ),
                    const SizedBox(height: 64),
                    CustomTextButton(
                      text: 'Explore',
                      onTap: () {},
                      radius: 5,
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
