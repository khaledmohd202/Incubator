import 'package:flutter/material.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 25,
        ),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Reset Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Please enter your new password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blackColor.withOpacity(0.4),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'New Password',
                style: TextStyle(
                  color: AppColors.blackColor.withOpacity(0.5),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.greyColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // 1- hint text
                      hintText: 'Enter your new password',
                      hintStyle: TextStyle(
                        color: AppColors.blackColor.withOpacity(0.3),
                      ),
                      border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: AppColors.primaryColor),
                      ),
                      // prefixIcon: Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //     vertical: 10.0,
                      //     horizontal: 15,
                      //   ),
                      //   // 2- prefixIcon
                      //   child: SvgPicture.asset(
                      //     AppIcons.passwordIcon,
                      //   ),
                      // ),
                      // 2- suffixIcon
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 15,
                        ),
                        child: Icon(
                          Icons.visibility_off_outlined,
                          color: AppColors.blackColor.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Confirm Password',
                style: TextStyle(
                  color: AppColors.blackColor.withOpacity(0.5),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.greyColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // 1- hint text
                      hintText: 'Repeat your password',
                      hintStyle: TextStyle(
                        color: AppColors.blackColor.withOpacity(0.3),
                      ),
                      border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: AppColors.primaryColor),
                      ),
                      // prefixIcon: Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //     vertical: 10.0,
                      //     horizontal: 15,
                      //   ),
                      //   // 2- prefixIcon
                      //   child: SvgPicture.asset(
                      //     AppIcons.passwordIcon,
                      //   ),
                      // ),
                      // 2- suffixIcon
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 15,
                        ),
                        child: Icon(
                          Icons.visibility_off_outlined,
                          color: AppColors.blackColor.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: ElevatedButton(
                  // 2- onPressed
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.passwordChangedRoute);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text(
                    // 3- button text
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
