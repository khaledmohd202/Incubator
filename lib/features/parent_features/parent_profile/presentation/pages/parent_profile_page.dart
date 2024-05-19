import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/assets/app_icons.dart';
import 'package:incubator/core/utils/assets/app_images.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';

class ParentProfilePage extends StatefulWidget {
  const ParentProfilePage({super.key});

  @override
  State<ParentProfilePage> createState() => _ParentProfilePageState();
}

class _ParentProfilePageState extends State<ParentProfilePage> {
  bool _switchValue = false;
  bool _notificationSwitchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              // ignore: sized_box_for_whitespace
              Container(
                width: MediaQuery.of(context).size.width,
                // height: 200,
                // color: AppColors.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 40),
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: AppColors.primaryColor,
                          child: Image.asset(AppImages.splash),
                        ),
                        const Text(
                          'Incubator',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                    Transform.scale(
                      scale: 1,
                      child: Switch(
                        value: _switchValue,
                        activeColor: AppColors.whiteColor,
                        activeTrackColor: AppColors.primaryColor,
                        inactiveThumbColor: AppColors.whiteColor,
                        inactiveTrackColor: AppColors.greyColor,
                        splashRadius: 50.0,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              // extracting this widget out after removing the var _selectedNotificationValue
              // ignore: sized_box_for_whitespace
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  children: [
                    ListTile(
                      selectedTileColor: Colors.transparent,
                      leading: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor:
                            AppColors.primaryColor.withOpacity(0.4),
                        child: SvgPicture.asset(
                          AppIcons.editProfileIcon,
                          width: 30,
                          height: 30,
                        ),
                      ),
                      title: Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.primaryColor,
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                            context, Routes.parentEditProfilePageRoute);
                      },
                    ),
                    Divider(
                      color: AppColors.primaryColor,
                      indent: 10,
                      endIndent: 15,
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 25,
                            backgroundColor:
                                AppColors.primaryColor.withOpacity(0.4),
                            child: Icon(
                              Icons.notifications,
                              color: AppColors.whiteColor,
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            'Notifications',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Switch(
                            value: _notificationSwitchValue,
                            onChanged: (value) {
                              setState(() {
                                _notificationSwitchValue = value;
                              });
                            },
                            activeColor: AppColors.primaryColor,
                            activeTrackColor:
                                AppColors.blackColor.withOpacity(0.5),
                            inactiveThumbColor: AppColors.whiteColor,
                            inactiveTrackColor: AppColors.greyColor,
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: AppColors.primaryColor,
                      indent: 10,
                      endIndent: 15,
                      height: 25,
                    ),
                    ListTile(
                      selectedTileColor: Colors.transparent,

                      leading: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor:
                            AppColors.primaryColor.withOpacity(0.4),
                        child: SvgPicture.asset(AppIcons.supportIcon),
                      ),
                      title: Text(
                        'Support',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.primaryColor,
                      ),
                      // tileColor: AppColors.whiteColor,
                      onTap: () {},
                    ),
                    Divider(
                      color: AppColors.primaryColor,
                      indent: 10,
                      endIndent: 15,
                      height: 25,
                    ),
                    ListTile(
                      selectedTileColor: Colors.transparent,
                      leading: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor:
                            AppColors.primaryColor.withOpacity(0.4),
                        child: Icon(Icons.language,
                            color: AppColors.whiteColor, size: 30),
                      ),
                      title: Text(
                        'Language',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.primaryColor,
                      ),
                      // tileColor: AppColors.whiteColor,
                      onTap: () {},
                    ),
                    Divider(
                      color: AppColors.primaryColor,
                      indent: 10,
                      endIndent: 15,
                      height: 25,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor:
                            AppColors.primaryColor.withOpacity(0.4),
                        child: Icon(
                          Icons.logout,
                          color: AppColors.whiteColor,
                          // size: 30,
                        ),
                      ),
                      title: Text(
                        'Logout',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.primaryColor,
                      ),
                      splashColor: AppColors.whiteColor,
                      // mouseCursor: MouseCursor.defer,
                      selectedTileColor: Colors.transparent,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
