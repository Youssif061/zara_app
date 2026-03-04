import 'package:flutter/material.dart';
import 'package:zara_application/main/List_Screen/Data/Dymme.dart';
import 'package:zara_application/main/List_Screen/Data/DymmeList.dart';
import 'package:zara_application/main/List_Screen/Pages/OrderDetials.dart';
import 'package:zara_application/main/List_Screen/Widgets/order_list_conatinar.dart';

class ListViewForOrders extends StatelessWidget {
  const ListViewForOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // أي عناصر فوق
        Expanded(
          child: SizedBox(
            height: 80,
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap:
                  true, // مهم جداً لأنك حاططها جوه SingleChildScrollView
              physics:
                  const NeverScrollableScrollPhysics(), // علشان السكرول يبقى للصحفة كلها
              padding: const EdgeInsets.all(20),
              itemCount: offersList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 12,
                  ), // المسافة بين الكروت
                  child: OrderListConatinar(
                    models: offersList[index],
                    screen: Orderdetials(),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
