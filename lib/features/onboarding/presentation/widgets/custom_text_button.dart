import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.text,
  });
  final void Function() onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        bottom: 15,
      ),
      child: TextButton(
        // onPressed
        onPressed: onPressed,
        style: TextButton.styleFrom(
          // foregroundColor
          foregroundColor: foregroundColor,
          // backgroundColor
          backgroundColor: backgroundColor,
          minimumSize: const Size(370, 60),
        ),
        child: Text(
          // text
          text,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
