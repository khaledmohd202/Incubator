import 'package:flutter/material.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
              right: 80,
            ),
            child: Text(
              text,
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
    );
  }
}
