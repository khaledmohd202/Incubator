import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:incubator/core/utils/assets/app_icons.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/incubator/presentation/widgets/custom_elevated_button.dart';
import 'package:incubator/features/incubator/presentation/widgets/custom_text_form_field.dart';

class AddingIncubator extends StatelessWidget {
  AddingIncubator({
    super.key,
  });

  final Decoration? decoration = BoxDecoration(
    color: AppColors.greyColor.withOpacity(0.4),
    borderRadius: BorderRadius.circular(30),
    border: Border.all(
      color: AppColors.blackColor.withOpacity(0.4),
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 0,
              ),
              child: CustomTextFormField(
                onTap: () {},
                hintText: 'Enter your name',
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20,
                  ),
                  child: SvgPicture.asset(
                    AppIcons.userIcon,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 0,
              ),
              child: CustomTextFormField(
                onTap: () {},
                hintText: 'Enter your Phone Number',
                keyboardType: TextInputType.phone,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20,
                  ),
                  child: SvgPicture.asset(
                    AppIcons.phoneIcon,
                    width: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 110,
                    decoration: decoration,
                    child: CustomTextFormField(
                      keyboardType: TextInputType.phone,
                      onTap: () {},
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          // horizontal: 10,
                        ),
                        child: SvgPicture.asset(
                          AppIcons.calenderIcon,
                        ),
                      ),
                      hintText: 'Day',
                      contentPadding: const EdgeInsets.only(left: 10),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    decoration: decoration,
                    child: CustomTextFormField(
                      keyboardType: TextInputType.number,
                      onTap: () {},
                      hintText: 'Age:',
                      contentPadding: const EdgeInsets.only(left: 10),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    decoration: decoration,
                    child: CustomTextFormField(
                      keyboardType: TextInputType.number,
                      onTap: () {},
                      hintText: 'Code:',
                      contentPadding: const EdgeInsets.only(left: 10),
                    ),
                  ),
                ],
              ),
            ),
            CustomElevatedButton(
              padding: const EdgeInsets.symmetric(vertical: 50),
              text: 'Save',
              borderRadius: BorderRadius.circular(30),
              textColor: AppColors.whiteColor,
              backgroundColor: AppColors.primaryColor,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
