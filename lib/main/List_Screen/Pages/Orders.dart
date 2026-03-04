import 'package:flutter/material.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/main/List_Screen/Widgets/OrderListViw.dart';
import 'package:zara_application/main/List_Screen/Widgets/orders_list_view.dart';

class Orderes extends StatelessWidget {
  const Orderes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Order', style: TextStyles.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OrdersListView(),
            SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListViewForOrders(),
            ),
          ],
        ),
      ),
    );
  }
}
