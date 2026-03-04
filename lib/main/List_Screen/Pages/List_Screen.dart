import 'package:flutter/material.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/functions/navigations.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/main/List_Screen/Pages/Orders.dart';

class List_Screen extends StatelessWidget {
  const List_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Order', style: TextStyles.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(child: Image.asset(AppImages.bell, height: 100, width: 100)),
          SizedBox(height: 20),

          Text(
            'No Notification yet',
            style: TextStyles.title.copyWith(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              Navigations.naviagationPush(context, Orderes());
            },
            child: Text(
              'Explore Categories',
              style: TextStyles.body.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.backgroundColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
