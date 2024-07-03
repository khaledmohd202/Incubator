import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/assets/app_icons.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:incubator/features/onboarding/presentation/widgets/custom_text_button.dart';

class PasswordChangedPage extends StatelessWidget {
  const PasswordChangedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 25.h,
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                SvgPicture.asset(
                  AppIcons.checkBoxOnIcon,
                  height: 100.h,
                  width: 100.w,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Text(
                  'Password Changed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34.sp,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  'Your password has been changed\n successfully.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.blackColor.withOpacity(0.4),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                CustomTextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.incubatorLoginRoute, (route) => false);
                  },
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.whiteColor,
                  text: 'Back to Login',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
