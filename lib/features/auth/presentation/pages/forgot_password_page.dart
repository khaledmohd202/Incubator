import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/assets/app_icons.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/auth/presentation/widgets/login_text_field.dart';
import 'package:incubator/features/onboarding/presentation/widgets/custom_text_button.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 25.w,
            ),
            child: Column(
              children: [
                Text(
                  'Forgot Password?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28.sp,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Text(
                  'Don’t worry! It happens. Please enter the email associated with your account.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.blackColor.withOpacity(0.4),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' Email Address',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.blackColor.withOpacity(0.5),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                LoginTextField(
                  hintText: 'Enter your email',
                  prefixIcon: AppIcons.emailIcon,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                CustomTextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.verifyingEmailRoute);
                  },
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.whiteColor,
                  text: 'Send Code',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Remember your password? ',
                      style: TextStyle(
                        color: AppColors.blackColor.withOpacity(0.3),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
