import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/functions/navigations.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';

void modelBottomforCategories({
  required BuildContext context,
  required String title,
  required List<String> options,
}) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return ContentModalBottom(title: title, options: options);
    },
  );
}

class ContentModalBottom extends StatefulWidget {
  final String title;
  final List<String> options;
  const ContentModalBottom({
    super.key,
    required this.title,
    required this.options,
  });

  @override
  State<ContentModalBottom> createState() => _ContentModalBottomState();
}

class _ContentModalBottomState extends State<ContentModalBottom> {
  String selected = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Clear",
                  style: TextStyles.caption.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  widget.title,
                  style: TextStyles.title.copyWith(fontWeight: FontWeight.w700),
                ),
                InkWell(
                  onTap: () {
                    return Navigations.naviagationPop(context);
                  },
                  child: SvgPicture.asset(
                    AppImages.wrongSvg,
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
            Gap(12),
            Column(
              children: widget.options
                  .map(
                    (option) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: buildModalData(option),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildModalData(String option) {
    final isSelected = selected == option;

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selected = "";
          } else {
            selected = option;
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : AppColors.lightGreyColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                option,
                style: TextStyle(
                  color: isSelected ? Colors.white : AppColors.blackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (isSelected)
                SvgPicture.asset(
                  AppImages.correctSvg,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                )
              else
                SizedBox(width: 24, height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
