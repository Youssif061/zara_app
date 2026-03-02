import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';

class HeaderSearchContainer extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color color;
  final Color textColor; // text color
  final Color iconColor;
  const HeaderSearchContainer({
    super.key,
    this.textColor = Colors.black,
    this.iconColor = Colors.black,
    required this.title,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyles.small.copyWith(color: getColor(color)),
            ),
            Gap(4),
            SvgPicture.asset(
              imagePath,
              height: 16,
              width: 16,
              colorFilter: ColorFilter.mode(getColor(color), BlendMode.srcIn),
            ),
          ],
        ),
      ),
    );
  }
}

Color getColor(Color bg) {
  if (bg == AppColors.primaryColor) return Colors.white;
  return Colors.black;
}
