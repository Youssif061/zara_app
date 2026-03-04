import 'package:flutter/material.dart';
import 'package:zara_application/main/List_Screen/Data/Dymme.dart';
import 'package:zara_application/main/List_Screen/Widgets/orders_contanare.dart';

class OrdersListView extends StatelessWidget {
  const OrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (context, index) => const SizedBox(width: 13),
        itemBuilder: (BuildContext context, int index) {
          return OrdersContanare(model: offersOrder[index]);
        },
      ),
    );
  }
}
