import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/feature/search/data/dummy_data.dart';

class SearchItems extends StatelessWidget {
  final List<DummyData> items;
  const SearchItems({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: items.length,
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
                      AppImages.faviconSvg,
                      width: 30,
                      height: 30,
                    ),
                  ),
                  //Gap(4),
                  Expanded(
                    child: Image.asset(items[index].imagePath, width: 160),
                  ),
                  Gap(4),
                  Text(
                    items[index].name,
                    textScaler: const TextScaler.linear(0.9),
                    style: TextStyles.caption,
                  ),
                  Text(
                    items[index].price,
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
