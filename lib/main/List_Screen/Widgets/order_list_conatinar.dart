import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/main/List_Screen/Data/DymmeList.dart';

class OrderListConatinar extends StatelessWidget {
  const OrderListConatinar({
    super.key,
    required this.models,
    required this.screen,
  });
  final DymmeList models;
  final Widget screen;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipOval(
            child: SvgPicture.asset(AppImages.listSvg, height: 45, width: 45),
          ),
          SizedBox(width: 10),
          Column(
            children: [
              SizedBox(height: 16),
              Text(
                models.name,
                style: TextStyles.body.copyWith(fontWeight: FontWeight.w500),
              ),
              Text(
                models.Items,
                style: TextStyles.small.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen),
              );
            },
            borderRadius: BorderRadius.circular(25),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.backgroundColor,
              child: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.accentGrey1,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
