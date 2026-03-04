import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/main/HomePage/Data/DummyData_Hoodies.dart';

class Itemhoohies extends StatelessWidget {
  const Itemhoohies({super.key, required this.model});
  final DummyData_Hoodies model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 160,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  model.imagePath,
                  height: 200,
                  width: 160,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 9,
                right: 12,
                child: SvgPicture.asset(
                  AppImages.faviconSvg,
                  height: 24,
                  width: 24,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            model.name,
            style: TextStyles.small.copyWith(fontWeight: FontWeight.w500),
          ),
          Text(
            model.price,
            style: TextStyles.caption.copyWith(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
