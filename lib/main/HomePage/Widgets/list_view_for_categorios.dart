import 'package:flutter/material.dart';
import 'package:zara_application/main/HomePage/Data/DummyData_Category.dart';
import 'package:zara_application/main/HomePage/Widgets/item_icon_for_category.dart';

class ListViewForCategorios extends StatelessWidget {
  const ListViewForCategorios({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: ListView.separated(
        itemCount: offersInCate.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (BuildContext context, int index) {
          return ItemIconForCategory(model: offersInCate[index]);
        },
      ),
    );
  }
}
