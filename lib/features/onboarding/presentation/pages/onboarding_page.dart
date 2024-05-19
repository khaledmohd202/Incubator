import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/assets/app_images.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/onboarding/presentation/widgets/onboarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: _controller,
          onPageChanged: (value) {
            setState(() => isLastPage = value == 2);
          },
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 8,
                      bottom: 20,
                    ),
                    child: TextButton(
                      onPressed: () => _controller.jumpToPage(2),
                      style: ButtonStyle(
                          overlayColor:
                              WidgetStateProperty.all(Colors.transparent)),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Image.asset(AppImages.onboarding_1),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      right: 80,
                    ),
                    child: Text(
                      'Find a lot of specialist\ndoctors in one place',
                      style: TextStyle(
                        fontSize: 26,
                        wordSpacing: 1.5,
                        height: 0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            OnBoardingItem(
              image: AppImages.onboarding_2,
              text: 'Find a lot of specialist\ndoctors in one place',
            ),
            OnBoardingItem(
              image: AppImages.onboarding_1,
              text: 'Get advice only from a doctor you believe in.',
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                overlayColor: Colors.white.withOpacity(0.1),
                backgroundColor: AppColors.primaryColor,
                minimumSize: const Size.fromHeight(70),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                ),
              ),
              onPressed: () async {
                Navigator.pushReplacementNamed(
                  context,
                  Routes.userRoute,
                );
              },
            )
          : Container(
              color: AppColors.whiteColor,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: AppColors.primaryColor,
                      dotColor: AppColors.greyColor,
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 10,
                    ),
                  ),
                  InkWell(
                    onTap: () => _controller.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn,
                    ),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.arrow_right,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
