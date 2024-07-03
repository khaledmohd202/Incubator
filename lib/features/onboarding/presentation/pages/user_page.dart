import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/assets/app_images.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/core/utils/strings/app_strings.dart';
import 'package:incubator/features/onboarding/presentation/widgets/custom_text_button.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0.sign),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Image.asset(AppImages.splash),
              Text(
                AppStrings.appName,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Text(
                AppStrings.appDescription,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              CustomTextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.incubatorLoginRoute);
                },
                backgroundColor: AppColors.primaryColor,
                foregroundColor: AppColors.whiteColor,
                text: 'Log in as Incubator',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomTextButton(
                onPressed: () {
                  modalBottomSheet(context);
                },
                backgroundColor: AppColors.primaryColor,
                foregroundColor: AppColors.whiteColor,
                text: 'Log in as Parent',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomTextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.homePageRoute);
                },
                backgroundColor: AppColors.greyColor,
                foregroundColor: AppColors.redColor,
                text: 'Nearest Incubator',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> modalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      barrierColor: Colors.black.withOpacity(0.4),
      context: context,
      builder: (context) {
        /*BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 7.dg,
            sigmaY: 7.dg,
            // tileMode: TileMode.clamp,
          ),
          child:,) */
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.43,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'by creating an account',
                  style: TextStyle(fontSize: 12.sp),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                CustomTextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Routes.parentLoginRoute,
                    );
                  },
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.whiteColor,
                  text: 'Log in',
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                CustomTextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Routes.parentRegistrationRoute,
                    );
                  },
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.whiteColor,
                  text: 'Create New Account',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
