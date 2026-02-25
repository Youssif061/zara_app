import 'package:flutter/material.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';

class ContainerCustomization extends StatelessWidget {
  final String? textOne, textTwo, textThree;
  final Widget child;

  const ContainerCustomization({
    super.key,
    this.textOne,
    this.textTwo,
    this.textThree,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.lightGreyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (textOne != null)
                  Text(
                    textOne!,
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                if (textTwo != null)
                  Text(
                    textTwo!,
                    style: TextStyles.body.copyWith(
                      color: AppColors.accentGrey,
                    ),
                  ),

                if (textThree != null)
                  Text(
                    textThree!,
                    style: TextStyles.body.copyWith(
                      color: AppColors.accentGrey,
                    ),
                  ),
              ],
            ),

            const Spacer(),

            child,
          ],
        ),
      ),
    );
  }
}