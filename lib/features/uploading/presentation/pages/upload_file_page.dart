import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:incubator/core/utils/assets/app_icons.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/incubator/presentation/widgets/custom_elevated_button.dart';
import 'package:incubator/features/incubator/presentation/widgets/custom_text_form_field.dart';

class UploadFilePage extends StatelessWidget {
  const UploadFilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Upload File',
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
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20,
                  ),
                  child: SvgPicture.asset(
                    AppIcons.phoneIcon,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              SvgPicture.asset(
                AppIcons.largeFileIcon,
                height: 140,
                width: 140,
              ),
              const SizedBox(height: 40),
              CustomElevatedButton(
                padding: const EdgeInsets.all(0),
                borderRadius: BorderRadius.circular(30),
                text: 'Upload File',
                onPressed: () {},
                textColor: AppColors.whiteColor,
                backgroundColor: AppColors.primaryColor,
              ),
              const SizedBox(height: 30),
              CustomElevatedButton(
                padding: const EdgeInsets.all(0),
                borderRadius: BorderRadius.circular(30),
                text: 'Submit',
                onPressed: () {},
                textColor: AppColors.whiteColor,
                backgroundColor: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
