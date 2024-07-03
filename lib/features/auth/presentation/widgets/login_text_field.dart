import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    super.key,
    this.onChanged,
    this.onSaved,
    this.onTap,
    this.hintText,
    required this.prefixIcon,
  });
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function()? onTap;
  final String? hintText;
  final String prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: MediaQuery.of(context).size.width * 0.91,
      decoration: BoxDecoration(
        color: AppColors.greyColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        onTap: onTap,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.blackColor.withOpacity(0.3),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.r)),
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.r)),
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.0.h,
              horizontal: 15.w,
            ),
            child: SvgPicture.asset(
              prefixIcon,
            ),
          ),
        ),
      ),
    );
  }
}
