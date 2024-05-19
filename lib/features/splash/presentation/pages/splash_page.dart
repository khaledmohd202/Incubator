import 'package:flutter/material.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/assets/app_images.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/core/utils/strings/app_strings.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then(
      (_) => Navigator.pushReplacementNamed(
        context,
        Routes.onboardingRoute,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Positioned(
            bottom: MediaQuery.of(context).size.height / 2.9,
            left: MediaQuery.of(context).size.width / 3.7,
            child: Column(
              children: [
                Image.asset(
                  AppImages.splash,
                  width: 200,
                  height: 200,
                ),
                const Text(
                  AppStrings.appName,
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black12,
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              AppImages.splashDecoration,
            ),
          ),
        ],
      ),
    );
  }
}
