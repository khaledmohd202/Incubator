import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/notification/presentation/pages/notification_page.dart';
import 'package:incubator/features/profile/presentation/pages/profile_page.dart';
import 'package:incubator/features/search/presentation/pages/search_page.dart';
import 'package:incubator/features/home/presentation/pages/welcome_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final icons = const [
    Icon(Icons.home_outlined),
    Icon(Icons.search),
    Icon(Icons.notifications_outlined),
    Icon(Icons.person),
  ];
  final screens = [
     WelcomePage(),
    const SearchPage(),
    const NotificationPage(),
    const ProfilePage(),
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
