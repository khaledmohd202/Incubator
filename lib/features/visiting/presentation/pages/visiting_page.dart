import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:incubator/core/utils/assets/app_icons.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/incubator/presentation/widgets/custom_elevated_button.dart';
import 'package:incubator/features/incubator/presentation/widgets/custom_text_form_field.dart';

class VisitingPage extends StatelessWidget {
  const VisitingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Visiting',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              CustomTextFormField(
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
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Enter your email',
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20,
                  ),
                  child: SvgPicture.asset(
                    AppIcons.emailIcon,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Enter your phone number',
                keyboardType: TextInputType.phone,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20,
                  ),
                  child: SvgPicture.asset(AppIcons.phoneIcon),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 50,
                width: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: AppColors.greyColor,
                    width: 1,
                  ),
                ),
                child: const CustomTextFormField(
                  keyboardType: TextInputType.phone,
                  hintText: 'Code:',
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.greyColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const SizedBox(width: 20),
                    SvgPicture.asset(
                      AppIcons.clockIcon,
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 40),
                    RichText(
                      text: TextSpan(
                        text: 'Time: ',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: ' 10',
                            style: TextStyle(
                              color: AppColors.blackColor,
                            ),
                          ),
                          TextSpan(
                            text: '  AM',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                            ),
                          ),
                          TextSpan(
                            text: '    :    ',
                            style: TextStyle(
                                color: AppColors.blackColor, fontSize: 20),
                          ),
                          TextSpan(
                            text: '12',
                            style: TextStyle(
                              color: AppColors.blackColor,
                            ),
                          ),
                          TextSpan(
                            text: '  PM',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // not completed
              Container(
                width: MediaQuery.of(context).size.width,
                height: 160,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: AppColors.greyColor,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'Comments:',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              CustomElevatedButton(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                borderRadius: BorderRadius.circular(30),
                text: 'Send',
                onPressed: () {},
                backgroundColor: AppColors.primaryColor,
                textColor: AppColors.whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
