import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/assets/app_icons.dart';
import 'package:incubator/core/utils/assets/app_images.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/home/presentation/widgets/custom_container.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});
  final text = [
    'Incubator',
    'Cases',
    'Upload File',
    'Visiting',
  ];
  final images = [
    AppIcons.incubatorIcon,
    AppIcons.casesIcon,
    AppIcons.uploadFileIcon,
    AppIcons.visitingIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          homeHeader(context),
          Expanded(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.dg),
                  topRight: Radius.circular(15.dg),
                ),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.5.w,
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: homeComponent(
                      context,
                      text_1: text[0],
                      image_1: images[0],
                      onTap_1: () {
                        Navigator.pushNamed(context, Routes.incubatorPageRoute);
                      },
                      text_2: text[1],
                      image_2: images[1],
                      onTap_2: () {
                        Navigator.pushNamed(context, Routes.casesPageRoute);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    child: homeComponent(
                      context,
                      text_1: text[2],
                      image_1: images[2],
                      onTap_1: () {
                        Navigator.pushNamed(
                            context, Routes.uploadFilePageRoute);
                      },
                      text_2: text[3],
                      image_2: images[3],
                      onTap_2: () {
                        Navigator.pushNamed(context, Routes.visitingPageRoute);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container homeHeader(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Positioned(
            top: 50.h,
            left: 20.w,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 36.r,
                  backgroundColor: AppColors.whiteColor,
                  child: Image.asset(AppImages.welcomeLogo),
                ),
              ],
            ),
          ),
          Positioned(
            top: 130.h,
            left: 30.w,
            child: Text(
              'welcome 👋',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.blackColor,
              ),
            ),
          ),
          Positioned(
            bottom: 60.h,
            left: 18.w,
            child: Container(
              height: 36.h,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: AppColors.greyColor.withOpacity(0.5),
              ),
              child: TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  hintText: 'Search',
                  contentPadding: EdgeInsets.only(left: 20.w),
                  hintStyle: TextStyle(
                    color: AppColors.blackColor.withOpacity(0.5),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.blackColor.withOpacity(0.5),
                  ),
                  // suffixIcon: Icon(
                  //   Icons.mic,
                  //   color: AppColors.blackColor.withOpacity(0.5),
                  // ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(color: AppColors.primaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(
                      color: AppColors.greyColor,
                      width: 2.w,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              AppImages.welcomeDecoration,
            ),
          ),
        ],
      ),
    );
  }

  Widget homeComponent(
    BuildContext context, {
    required String text_1,
    required String image_1,
    required void Function() onTap_1,
    required String text_2,
    required String image_2,
    required void Function() onTap_2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomContainer(
          text: text_1,
          image: image_1,
          color: AppColors.primaryColor.withOpacity(0.5),
          onTap: onTap_1,
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.06),
        CustomContainer(
          text: text_2,
          image: image_2,
          color: AppColors.primaryColor.withOpacity(0.5),
          onTap: onTap_2,
        ),
      ],
    );
  }
}
