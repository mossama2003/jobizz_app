import 'dart:ui';

import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobizz/core/constants/app_images.dart';
import 'package:jobizz/core/constants/app_size.dart';
import 'package:jobizz/core/style/app_colors.dart';

class ApplicationTrackingScreen extends StatelessWidget {
  const ApplicationTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: AppSize.widthScale(context, 18),
                top: AppSize.heightScale(context, 16),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(AppImages.backArrow),
                  SizedBox(width: AppSize.widthScale(context, 69)),
                  Text(
                    'Applied Job Details',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: AppSize.textScale(context, 16),
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(height: AppSize.heightScale(context, 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.spotify),
                SizedBox(width: AppSize.widthScale(context, 15)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'UX Intern',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: AppSize.textScale(context, 14),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Spotify',
                      style: TextStyle(
                        color: AppColors.black.withOpacity(0.4),
                        fontFamily: 'Poppins',
                        fontSize: AppSize.textScale(context, 13),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 67),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$88,000/y',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: AppSize.textScale(context, 14),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Los Angels, US',
                      style: TextStyle(
                        color: AppColors.black.withOpacity(0.4),
                        fontFamily: 'Poppins',
                        fontSize: AppSize.textScale(context, 13),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: AppSize.heightScale(context, 21),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: AppColors.lightGray.withOpacity(0.2),
                child: const Padding(
                  padding: EdgeInsets.only(top: 36, left: 24, bottom: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Track Application',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 24),
                      // EasyStepper(
                      //   activeStep: ,
                      //   lineLength: 70,
                      //   lineSpace: 0,
                      //   lineType: LineType.normal,
                      //   defaultLineColor: Colors.white,
                      //   finishedLineColor: Colors.orange,
                      //   activeStepTextColor: Colors.black87,
                      //   finishedStepTextColor: Colors.black87,
                      //   internalPadding: 0,
                      //   showLoadingAnimation: false,
                      //   stepRadius: 8,
                      //   showStepBorder: false,
                      //   lineDotRadius: 1.5,
                      //   steps: [
                      //     EasyStep(
                      //       customStep: CircleAvatar(
                      //         radius: 8,
                      //         backgroundColor: Colors.white,
                      //         child: CircleAvatar(
                      //           radius: 7,
                      //           backgroundColor:
                      //           activeStep >= 0 ? Colors.orange : Colors.white,
                      //         ),
                      //       ),
                      //       title: 'Waiting',
                      //     ),
                      //     EasyStep(
                      //       customStep: CircleAvatar(
                      //         radius: 8,
                      //         backgroundColor: Colors.white,
                      //         child: CircleAvatar(
                      //           radius: 7,
                      //           backgroundColor:
                      //           activeStep >= 1 ? Colors.orange : Colors.white,
                      //         ),
                      //       ),
                      //       title: 'Order Received',
                      //       topTitle: true,
                      //     ),
                      //     EasyStep(
                      //       customStep: CircleAvatar(
                      //         radius: 8,
                      //         backgroundColor: Colors.white,
                      //         child: CircleAvatar(
                      //           radius: 7,
                      //           backgroundColor:
                      //           activeStep >= 2 ? Colors.orange : Colors.white,
                      //         ),
                      //       ),
                      //       title: 'Preparing',
                      //     ),
                      //     EasyStep(
                      //       customStep: CircleAvatar(
                      //         radius: 8,
                      //         backgroundColor: Colors.white,
                      //         child: CircleAvatar(
                      //           radius: 7,
                      //           backgroundColor:
                      //           activeStep >= 3 ? Colors.orange : Colors.white,
                      //         ),
                      //       ),
                      //       title: 'On Way',
                      //       topTitle: true,
                      //     ),
                      //     EasyStep(
                      //       customStep: CircleAvatar(
                      //         radius: 8,
                      //         backgroundColor: Colors.white,
                      //         child: CircleAvatar(
                      //           radius: 7,
                      //           backgroundColor:
                      //           activeStep >= 4 ? Colors.orange : Colors.white,
                      //         ),
                      //       ),
                      //       title: 'Delivered',
                      //     ),
                      //   ],
                      //   onStepReached: (index) =>
                      //       setState(() => activeStep = index),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
