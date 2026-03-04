import 'package:flutter/material.dart';
import 'package:zara_application/main/HomePage/Data/DummyData_Hoodies.dart';
import 'package:zara_application/main/HomePage/Widgets/item__icon_hoodies.dart';

class ListViewForHoodies extends StatelessWidget {
  const ListViewForHoodies({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,

        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemCount: offers.length,
        itemBuilder: (BuildContext context, int index) {
          return Itemhoohies(
            model: offers[index],
            // كل عنصر يروح للصفحة الخاصة بيه
          );
        },
      ),
    );
  }
}
