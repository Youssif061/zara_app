import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/functions/navigations.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/main/HomePage/Pages/SeeAll.dart';
import 'package:zara_application/main/HomePage/Widgets/list_view_for_hoodies.dart';

class hoodiesPage extends StatelessWidget {
  const hoodiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigations.naviagationPush(context, SeeAll());
          },
          icon: SvgPicture.asset(AppImages.backIconSvg),
        ),
      ),
      body: Column(
        children: [
          Text('Hoodies(240)', style: TextStyles.title),
          ListViewForHoodies(),
        ],
      ),
    );
  }
}
