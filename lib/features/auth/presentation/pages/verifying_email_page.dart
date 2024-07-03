import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:pinput/pinput.dart';

class VerifyingEmailPage extends StatelessWidget {
  VerifyingEmailPage({super.key});
  final defaultPinTheme = PinTheme(
    width: 54.w,
    height: 55.h,
    textStyle: TextStyle(
      fontSize: 24.sp,
      color: AppColors.blackColor,
      fontWeight: FontWeight.bold,
    ),
    decoration: BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: AppColors.greyColor,
        width: 2.w,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 25.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Text(
                  'Please check your email',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 28.sp,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: AppColors.blackColor.withOpacity(0.3),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                    ),
                    children: [
                      const TextSpan(
                          text:
                              'Please enter the 6-digit code sent to your email '),
                      TextSpan(
                        text: 'contact.cashierc@gmail.com',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextSpan(text: ' for verification.'),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.09),
                Pinput(
                  length: 6,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 2.w,
                      ),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 2.w,
                      ),
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(
                        color: AppColors.redColor,
                        width: 2.w,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  keyboardAppearance: Brightness.light,
                  onCompleted: (value) {
                    debugPrint(value);
                  },
                  showCursor: true,
                  // onChanged: (value) {
                  // ignore: avoid_print
                  //   print(value);
                  // },
                  validator: (value) {
                    return value == '123456'
                        ? null
                        : 'Invalid code, please try again';
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.resetPasswordRoute);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.9, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    'Verify',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didn\'t receive the code? ',
                      style: TextStyle(
                        color: AppColors.blackColor.withOpacity(0.3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend code',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
