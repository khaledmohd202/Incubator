import 'package:flutter/material.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:pinput/pinput.dart';

class VerifyingEmailPage extends StatelessWidget {
  VerifyingEmailPage({super.key});
  final defaultPinTheme = PinTheme(
    width: 54,
    height: 60,
    textStyle: TextStyle(
      fontSize: 24,
      color: AppColors.blackColor,
      fontWeight: FontWeight.bold,
    ),
    decoration: BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: AppColors.greyColor,
        width: 2,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 25,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Text(
                  'Please check your email',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 28,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: AppColors.blackColor.withOpacity(0.3),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                    children: [
                      const TextSpan(
                          text:
                              'Please enter the 6-digit code sent to your email '),
                      TextSpan(
                        text: 'contact.cashierc@gmail.com',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextSpan(text: ' for verification.'),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                Pinput(
                  length: 6,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 2,
                      ),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 2,
                      ),
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(
                        color: AppColors.redColor,
                        width: 2,
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
                const SizedBox(height: 70),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.resetPasswordRoute);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.9, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Verify',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 16,
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
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend code',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
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
