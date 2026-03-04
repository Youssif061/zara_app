import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/functions/navigations.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/main/HomePage/Pages/hoodies.dart';
import 'package:zara_application/main/HomePage/Widgets/list_view_for_see_all.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigations.naviagationPop(context);
          },
          icon: SvgPicture.asset(AppImages.backIconSvg),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shop by Categories',
              style: TextStyles.title.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 14),
            Expanded(child: ListViewForSeeAll(screen: hoodiesPage())),
          ],
        ),
      ),
    );
  }
}
