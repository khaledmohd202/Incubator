import 'package:flutter/material.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';

class CustomContainerForTab extends StatelessWidget {
  const CustomContainerForTab({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
  });
  final String text;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 170,
      decoration: BoxDecoration(
        // Container Color
        color: color,
        borderRadius: BorderRadius.circular(35),
        border: Border.all(
          color: AppColors.blackColor.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          // text
          text,
          style: TextStyle(
            // Text Color
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
