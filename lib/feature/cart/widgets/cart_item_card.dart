import 'package:flutter/material.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/widgets/custom_icon_buttom.dart';

class CartItemCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String size;
  final String color;

  const CartItemCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(image, width: 70, height: 70, fit: BoxFit.cover),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Size - $size   Color - $color',
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),

                    Row(
                      children: [
                        CustomIconButton(
                          iconPath: AppImages.addSvg,
                          size: 24,
                          iconSize: 10,
                          backgroundColor: AppColors.primaryColor,
                          onTap: () {},
                        ),
                        const SizedBox(width: 8),
                        CustomIconButton(
                          iconPath: AppImages.minusSvg,
                          size: 24,
                          iconSize: 10,
                          backgroundColor: AppColors.primaryColor,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
