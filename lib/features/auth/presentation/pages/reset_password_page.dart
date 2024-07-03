import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:incubator/features/onboarding/presentation/widgets/custom_text_button.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 22.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Text(
                'Reset Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28.sp,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text(
                'Please enter your new password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blackColor.withOpacity(0.4),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text(
                'New Password',
                style: TextStyle(
                  color: AppColors.blackColor.withOpacity(0.5),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              resetPasswordTextFormField(
                hintText: 'Enter your new password',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Text(
                'Confirm Password',
                style: TextStyle(
                  color: AppColors.blackColor.withOpacity(0.5),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              resetPasswordTextFormField(
                hintText: 'Confirm your new password',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              CustomTextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.passwordChangedRoute);
                },
                backgroundColor: AppColors.primaryColor,
                foregroundColor: AppColors.whiteColor,
                text: 'Reset Password',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget resetPasswordTextFormField({required String hintText}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greyColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          // 1- hint text
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.blackColor.withOpacity(0.3),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 15.w,
            ),
            child: Icon(
              Icons.visibility_off_outlined,
              color: AppColors.blackColor.withOpacity(0.3),
            ),
          ),
        ),
      ),
    );
  }
}
