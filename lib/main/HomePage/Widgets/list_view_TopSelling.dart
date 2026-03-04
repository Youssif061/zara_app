import 'package:flutter/material.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/feature/search/data/dummy_data.dart';
import 'package:zara_application/main/HomePage/Widgets/item__icon_TopSelling.dart';

class ListViewMarket extends StatelessWidget {
  const ListViewMarket({super.key, this.TextCategory});

  final String? TextCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              TextCategory ?? '',
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w700),
            ),
            const Spacer(),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
              ),
              onPressed: () {},
              child: Text(
                'See All',
                style: TextStyles.caption.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 285,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: dummyItems.length,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (BuildContext context, int index) {
              return ItemIcon(model: dummyItems[index]);
            },
          ),
        ),
      ],
    );
  }
}
