import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/feature/profile/data/dummy_wishlist_data.dart';

class WishListItems extends StatelessWidget {
  final List<DummyWishlistData> data;
  const WishListItems({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //crossAxisCount: 4,
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          mainAxisExtent: 280,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.lightGreyColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      AppImages.heartSvg,
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Expanded(child: Image.asset(data[index].image, width: 160)),
                  Text(data[index].name, style: TextStyles.caption),
                  Text(
                    data[index].price,
                    style: TextStyles.caption.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
