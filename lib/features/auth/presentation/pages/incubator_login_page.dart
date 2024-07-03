import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/assets/app_icons.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/auth/presentation/widgets/login_text_field.dart';
import 'package:incubator/features/onboarding/presentation/widgets/custom_text_button.dart';

class IncubatorLoginPage extends StatelessWidget {
  const IncubatorLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Login as Incubator',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 30.sp,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            LoginTextField(
              hintText: 'Enter your email',
              prefixIcon: AppIcons.emailIcon,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            LoginTextField(
              hintText: 'Enter your password',
              prefixIcon: AppIcons.passwordIcon,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Routes.forgotPasswordRoute,
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: AppColors.blackColor.withOpacity(0.4),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            CustomTextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.homePageRoute);
              },
              backgroundColor: AppColors.primaryColor,
              foregroundColor: AppColors.whiteColor,
              text: 'Login',
            )
          ],
        ),
      ),
    );
  }
}
