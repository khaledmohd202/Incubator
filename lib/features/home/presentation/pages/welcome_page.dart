import 'package:flutter/material.dart';
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
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                Positioned(
                  top: 80,
                  left: 20,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: AppColors.whiteColor,
                        child: Image.asset(AppImages.welcomeLogo),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 30,
                  child: Text(
                    'welcome 👋',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 70,
                  left: 20,
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.greyColor.withOpacity(0.5),
                    ),
                    child: TextFormField(
                      onTap: () {},
                      decoration: InputDecoration(
                        hintText: 'Search',
                        contentPadding: const EdgeInsets.only(left: 20),
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: AppColors.primaryColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                            color: AppColors.greyColor,
                            width: 2,
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
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.5,
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomContainer(
                            text: text[0],
                            image: images[0],
                            color: AppColors.primaryColor.withOpacity(0.5),
                            onTap: () {
                              Navigator.pushNamed(
                                  context, Routes.incubatorPageRoute);
                            },
                          ),
                          const SizedBox(width: 30),
                          CustomContainer(
                            text: text[1],
                            image: images[1],
                            color: AppColors.primaryColor.withOpacity(0.5),
                            onTap: () {
                              Navigator.pushNamed(context, Routes.casesPageRoute);
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomContainer(
                            text: text[2],
                            image: images[2],
                            color: AppColors.primaryColor.withOpacity(0.5),
                            onTap: () {
                              Navigator.pushNamed(
                                  context, Routes.uploadFilePageRoute);
                            },
                          ),
                          const SizedBox(width: 30),
                          CustomContainer(
                            text: text[3],
                            image: images[3],
                            color: AppColors.primaryColor.withOpacity(0.5),
                            onTap: () {
                              Navigator.pushNamed(
                                  context, Routes.visitingPageRoute);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
