import 'package:flutter/material.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/main/HomePage/Data/DummyData_Category.dart';

class ItemIconForCategory extends StatelessWidget {
  const ItemIconForCategory({super.key, required this.model});

  final DummyCA model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 65,
      child: Container(
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: ClipOval(child: Image.asset(model.imagePath)),
              ),
            ),
            Text(
              model.name,
              style: TextStyles.small.copyWith(
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
