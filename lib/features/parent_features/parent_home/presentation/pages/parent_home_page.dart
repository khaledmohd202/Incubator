import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/parent_features/parent_home/presentation/pages/parent_welcome_page.dart';
import 'package:incubator/features/parent_features/parent_notification/presentation/pages/parent_notification_page.dart';
import 'package:incubator/features/parent_features/parent_profile/presentation/pages/parent_profile_page.dart';
import 'package:incubator/features/parent_features/parent_search/presentation/pages/parent_search_page.dart';

class ParentHomePage extends StatefulWidget {
  const ParentHomePage({super.key});

  @override
  State<ParentHomePage> createState() => _ParentHomePageState();
}

class _ParentHomePageState extends State<ParentHomePage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final icons = const [
    Icon(Icons.home_outlined),
    Icon(Icons.search),
    Icon(Icons.notifications_outlined),
    Icon(Icons.person),
  ];
  final screens = [
     ParentWelcomePage(),
    const ParentSearchPage(),
    const ParentNotificationPage(),
    const ParentProfilePage(),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: screens[index],
      bottomNavigationBar: ClipRect(
        clipBehavior: Clip.none,
        child: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: AppColors.whiteColor),
          ),
          child: CurvedNavigationBar(
            key: navigationKey,
            color: AppColors.secondaryColor,
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: AppColors.primaryColor,
            items: icons,
            index: index,
            height: 60,
            animationDuration: const Duration(milliseconds: 300),
            animationCurve: Curves.easeInOut,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
          ),
        ),
      ),
    );
    
  }
}