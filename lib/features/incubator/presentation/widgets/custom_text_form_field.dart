import 'package:flutter/material.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.contentPadding,
    this.onTap,
    this.keyboardType,
  });
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final void Function()? onTap;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greyColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        onTap: onTap,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          // hintText
          hintText: hintText,
          contentPadding: contentPadding,
          hintStyle: TextStyle(
            color: AppColors.blackColor.withOpacity(0.3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            borderSide:
                BorderSide(color: AppColors.primaryColor.withOpacity(0.5)),
          ),
          prefixIcon: prefixIcon,
          // Suffix Icon
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
