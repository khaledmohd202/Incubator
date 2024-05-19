import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.padding,
    this.onPressed,
    this.backgroundColor,
    required this.borderRadius,
    required this.text,
    this.textColor,
  });
  final EdgeInsetsGeometry padding;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final String text;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding
      padding: padding,
      child: ElevatedButton(
        // 2- onPressed
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          // backgroundColor
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            // borderRadius
            borderRadius: borderRadius,
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        child: Text(
          // text
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // textColor
            color: textColor,
          ),
        ),
      ),
    );
  }
}
