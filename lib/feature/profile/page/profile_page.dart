import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/functions/navigations.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/feature/profile/page/whishlist_screen.dart';
import 'package:zara_application/feature/profile/widgets/container_customization.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 60, 24, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipOval(
                  child: Image.asset(
                    AppImages.hoodie,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 32),

              ContainerCustomization(
                textOne: "Gilbert Jones",
                textTwo: "Glbertjones001@gmail.com",
                textThree: "121-224-7890",
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Edit",
                    style: TextStyles.small.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 26),

              ContainerCustomization(
                textTwo: "WishList",
                child: InkWell(
                  onTap: () {
                    Navigations.naviagationPush(context, WhishListScreen());
                  },
                  child: SvgPicture.asset(AppImages.arrowrightSvg),
                ),
              ),

              const SizedBox(height: 8),

              ContainerCustomization(
                textTwo: "Help",
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(AppImages.arrowrightSvg),
                ),
              ),

              const SizedBox(height: 8),

              ContainerCustomization(
                textTwo: "Support",
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(AppImages.arrowrightSvg),
                ),
              ),

              const Spacer(),

              Center(
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Sign Out",
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.redColor,
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
