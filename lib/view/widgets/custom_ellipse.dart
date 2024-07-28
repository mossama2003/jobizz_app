import 'package:flutter/material.dart';

import '../../core/constants/app_size.dart';
import '../../core/style/app_colors.dart';

class CustomEllipse extends StatelessWidget {
  const CustomEllipse({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 157,
      width: double.infinity,
      child: Stack(
          children: [
            Positioned(
              top: -245,
              left: -21,
              child: Container(
                width: AppSize.widthScale(context, 416),
                height: AppSize.heightScale(context, 416),
                decoration: BoxDecoration(
                  color: AppColors.veryDarkBlue.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
            ),
          ]
      ),
    );
  }
}
