import 'package:flutter/material.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/main/HomePage/Data/DummyData_Category.dart';

class itemSeeAll extends StatelessWidget {
  const itemSeeAll({super.key, required this.model, required this.screen});

  final DummyCA model;
  final Widget screen;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipOval(child: Image.asset(model.imagePath, height: 45, width: 45)),
          SizedBox(width: 10),
          Text(
            model.name,
            style: TextStyles.body.copyWith(fontWeight: FontWeight.w500),
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
