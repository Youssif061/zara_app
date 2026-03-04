import 'package:flutter/material.dart';
import 'package:zara_application/main/List_Screen/Data/Dymme.dart';

class OrdersContanare extends StatelessWidget {
  const OrdersContanare({super.key, required this.model});
  final DummyOr model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(model.name)),
    );
  }
}
