import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/assets/app_icons.dart';
import 'package:incubator/features/onboarding/data/models/onboard.dart';
import 'package:incubator/features/onboarding/presentation/widgets/onboarding_text_button.dart';
import '../../../../core/utils/colors/app_colors.dart';
import '../../../../core/utils/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        right: false,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    _pageController.jumpToPage(2);
                  },
                  child: Text(
                    AppStrings.skipString,
                    style: TextStyle(
                      fontSize: 16,
                      color: currentIndex == onboardingData.length - 1 ||
                              currentIndex == onboardingData.length - 2
                          ? AppColors.whiteColor
                          : AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingData.length,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemBuilder: (_, i) {
                  return Stack(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    alignment: Alignment.centerRight,
                    children: [
                      SvgPicture.asset(onboardingData[i].image),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      Positioned(
                        left: 0,
                        bottom: 0.h,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Text(
                            onboardingData[i].description,
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.blackColor.withOpacity(0.8),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardingData.length,
                      (index) => buildDot(index, context),
                    ),
                  ),
                  // const Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.63,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: OnboardingTextButton(
                      onPressed: () {
                        if (currentIndex == onboardingData.length - 1) {
                          Navigator.pushReplacementNamed(
                            context,
                            Routes.userRoute,
                          );
                        } else {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      backgroundColor: AppColors.primaryColor,
                      foregroundColor: AppColors.whiteColor,
                      width: 50.w,
                      height: 50.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      width: currentIndex == index ? 25 : 15,
      height: 8,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? AppColors.primaryColor
            : AppColors.greyColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
