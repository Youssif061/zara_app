import 'package:flutter/material.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/functions/navigations.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/core/widgets/custom_icon_buttom.dart';
import 'package:zara_application/feature/profile/data/dummy_wishlist_data.dart';
import 'package:zara_application/feature/profile/widgets/wish_list_items.dart';

class WhishListScreen extends StatelessWidget {
  const WhishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            children: [
              AppBar(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: CustomIconButton(
                  onTap: () {
                    Navigations.naviagationPop(context);
                  },
                  iconPath: AppImages.arrowleftSvg,
                  backgroundColor: AppColors.lightGreyColor,
                ),
                title: Text(
                  "WishList (${dummyWishlistData.length})",
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(height: 20),
              WishListItems(data: dummyWishlistData),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
