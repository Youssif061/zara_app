import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zara_application/core/styles/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback? onTap;
  final double size;
  final double iconSize;
  final Color? backgroundColor;
  final double borderRadius;

  const CustomIconButton({
    super.key,
    required this.iconPath,
    this.onTap,
    this.size = 40,
    this.iconSize = 24,
    this.backgroundColor,
    this.borderRadius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius),
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: SvgPicture.asset(iconPath, width: iconSize, height: iconSize),
        ),
      ),
    );
  }
}
