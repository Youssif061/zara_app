import 'package:flutter/material.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/feature/search/data/dummy_data.dart';
import 'package:zara_application/feature/search/widgets/header_search_container.dart';
import 'package:zara_application/feature/search/widgets/model_bottom_for_categories.dart';

class FilterationContainers extends StatelessWidget {
  final List<DummyData> filterdItems;
  const FilterationContainers({super.key, required this.filterdItems});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HeaderSearchContainer(
          title: "${filterdItems.length}",
          imagePath: AppImages.filterSvg,
          color: AppColors.primaryColor,
        ),
        InkWell(
          onTap: () {
            modelBottomforCategories(
              context: context,
              title: "Deals",
              options: ["On sale", "Not sale"],
            );
          },
          child: HeaderSearchContainer(
            title: "On sale",
            imagePath: AppImages.arrowdownSvg,
            color: AppColors.lightGreyColor,
          ),
        ),
        InkWell(
          onTap: () {
            modelBottomforCategories(
              context: context,
              title: "Price",
              options: ["Low price", "High price"],
            );
          },
          child: HeaderSearchContainer(
            title: "Price",
            imagePath: AppImages.arrowdownSvg,
            color: AppColors.primaryColor,
          ),
        ),
        InkWell(
          onTap: () {
            modelBottomforCategories(
              context: context,
              title: "Sort by",
              options: [
                "Recommended",
                "Newest",
                "Lowest - Highest Price",
                "Highest - Lowest Price",
              ],
            );
          },
          child: HeaderSearchContainer(
            title: "Sort by",
            imagePath: AppImages.arrowdownSvg,
            color: AppColors.lightGreyColor,
          ),
        ),
        InkWell(
          onTap: () {
            modelBottomforCategories(
              context: context,
              title: "Gender",
              options: ["Men", "Women", "Kids"],
            );
          },
          child: HeaderSearchContainer(
            title: "Men",
            imagePath: AppImages.arrowdownSvg,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
