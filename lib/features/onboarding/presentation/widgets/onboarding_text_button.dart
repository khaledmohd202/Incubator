import 'package:flutter/material.dart';

class OnboardingTextButton extends StatelessWidget {
  const OnboardingTextButton({
    super.key,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.width,
    this.height,
  });
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        // onPressed
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // backgroundColor
          backgroundColor: backgroundColor,
          shape: const CircleBorder(),
        ),
        child: Icon(
          Icons.arrow_forward,
          color: foregroundColor,
        ),
      ),
    );
  }
}
