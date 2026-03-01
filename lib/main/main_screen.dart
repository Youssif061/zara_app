import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/widgets/svg_active_icon.dart';
import 'package:zara_application/main/HomePage/Home_Screen.dart';
import 'package:zara_application/main/HomePage/List_Screen.dart';
import 'package:zara_application/main/HomePage/notification_Screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screen = [
    Home_Screen(),
    Notification_Screen(),
    List_Screen(),
    Center(child: Text("profile Screen")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.homeSvg),
            label: "Home",

            activeIcon: SvgActiveIcon(
              path: AppImages.homeSvg,
              color: AppColors.primaryColor,
            ),
          ),
          BottomNavigationBarItem(
            label: "notification",
            icon: SvgPicture.asset(AppImages.bellSvg),
            activeIcon: SvgActiveIcon(
              path: AppImages.bellSvg,
              color: AppColors.primaryColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.listSvg),
            label: "List",
            activeIcon: SvgActiveIcon(
              path: AppImages.listSvg,
              color: AppColors.primaryColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.personSvg),
            label: "Profile",

            activeIcon: SvgActiveIcon(
              path: AppImages.personSvg,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
