import 'package:flutter/material.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';

class ElevatedCustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final double? width;
  final double? height;

  const ElevatedCustomButton({
    super.key,
    this.onPressed,
    required this.title,
    this.width = double.infinity,
    this.height = 60,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          backgroundColor: AppColors.primaryColor,
        ),
        child: Text(
          title,
          style: TextStyles.body.copyWith(color: AppColors.backgroundColor),
        ),
      ),
    );
  }
}
