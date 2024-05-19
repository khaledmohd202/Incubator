import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:incubator/core/utils/assets/app_icons.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';

class ParentSearchPage extends StatelessWidget {
  const ParentSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(right: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColors.secondaryColor,
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                AppIcons.menuIcon,
              ),
              onPressed: () {
                // Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
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
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: AppColors.primaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                        color: AppColors.greyColor,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
