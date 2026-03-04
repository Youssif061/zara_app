import 'package:flutter/material.dart';
import 'package:zara_application/main/HomePage/Data/DummyData_Category.dart';
import 'package:zara_application/main/HomePage/Widgets/item_see_all.dart';

class ListViewForSeeAll extends StatelessWidget {
  const ListViewForSeeAll({super.key, required this.screen});
  final Widget screen;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 345,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,

        itemCount: offersInCate.length,
        separatorBuilder: (context, index) => const SizedBox(height: 10),

        itemBuilder: (BuildContext context, int index) {
          return itemSeeAll(model: offersInCate[index], screen: screen);
        },
      ),
    );
  }
}
