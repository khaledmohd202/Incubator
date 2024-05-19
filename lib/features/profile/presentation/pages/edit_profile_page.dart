import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:incubator/core/utils/assets/app_icons.dart';
import 'package:incubator/core/utils/assets/app_images.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/incubator/presentation/widgets/custom_elevated_button.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 20),
                // ignore: sized_box_for_whitespace
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.14,
                  // color: AppColors.greyColor,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(AppImages.splash),
                      ),
                      Positioned(
                        top: 65,
                        right: 135,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => CameraPage(),
                              //   ),
                              // );
                            },
                            child: Icon(
                              Icons.camera_alt,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // ignore: sized_box_for_whitespace
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    children: [
                      EditingProfileWidget(
                        hintText: 'Name',
                        onTap: () {},
                        keyboardType: TextInputType.text,
                      ),
                      EditingProfileWidget(
                        hintText: 'Surname',
                        onTap: () {},
                        keyboardType: TextInputType.text,
                      ),
                      EditingProfileWidget(
                        hintText: 'Username',
                        onTap: () {},
                        keyboardType: TextInputType.text,
                      ),
                      EditingProfileWidget(
                        hintText: 'Password',
                        onTap: () {},
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      EditingProfileWidget(
                        hintText: 'Email Address',
                        onTap: () {},
                        keyboardType: TextInputType.emailAddress,
                      ),
                      EditingProfileWidget(
                        hintText: 'Mobile Number',
                        onTap: () {},
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                CustomElevatedButton(
                  padding: const EdgeInsets.all(0),
                  borderRadius: BorderRadius.circular(35),
                  text: 'Save',
                  onPressed: () {},
                  backgroundColor: AppColors.primaryColor,
                  textColor: AppColors.whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditingProfileWidget extends StatelessWidget {
  const EditingProfileWidget({
    super.key,
    required this.hintText,
    this.onTap,
    this.onChanged,
    this.onSaved,
    this.keyboardType,
  });
  final String hintText;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        onTap: onTap,
        onChanged: onChanged,
        onSaved: onSaved,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          // prefixIcon: Image.asset(AppIcons.personIcon),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackColor.withOpacity(0.3),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.blackColor.withOpacity(0.5),
            fontSize: 18,
          ),
          suffixIcon: Transform.scale(
            scale: 0.6,
            child: SvgPicture.asset(
              AppIcons.editFileIcon,
              height: 10,
              width: 10,
            ),
          ),
        ),
      ),
    );
  }
}
