import 'dart:ui';

import 'package:flutter/material.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.splash),
          const Text(
            AppStrings.appName,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            AppStrings.appDescription,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          CustomTextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.incubatorLoginRoute);
            },
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.whiteColor,
            text: 'Log in as Incubator',
          ),
          CustomTextButton(
            onPressed: () {
              modalBottomSheet(context);
            },
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.whiteColor,
            text: 'Log in as Parent',
          ),
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
    );
  }

  Future<dynamic> modalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                barrierColor: Colors.black.withOpacity(0.4),
                // clipBehavior: Clip.antiAliasWithSaveLayer,
                context: context,
                builder: (context) {
                  return BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 8,
                      sigmaY: 8,
                      // tileMode: TileMode.clamp,
                    ),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.46,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const SizedBox(height: 30),
                            const Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text('by creating an account'),
                            const SizedBox(height: 50),
                            CustomTextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Routes.parentLoginRoute);
                              },
                              backgroundColor: AppColors.primaryColor,
                              foregroundColor: AppColors.whiteColor,
                              text: 'Log in',
                            ),
                            const SizedBox(height: 10),
                            CustomTextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Routes.parentRegistrationRoute);
                              },
                              backgroundColor: AppColors.primaryColor,
                              foregroundColor: AppColors.whiteColor,
                              text: 'Create New Account',
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
  }
}
