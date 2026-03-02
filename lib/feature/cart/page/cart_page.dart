/*
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/functions/navigations.dart';

import 'package:zara_application/core/widgets/elevated_custom_button.dart';
import 'package:zara_application/core/widgets/custom_icon_buttom.dart';
import 'package:zara_application/features/cart/widgets/cart_item_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const SizedBox(height: 24),
              
              const Align(
                alignment: Alignment.centerRight,
                child: Text('Remove All', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87)),
              ),
              const SizedBox(height: 16),
              
              Expanded(
                child: ListView(
                  children: const [
                    CartItemCard(
                      image: AppImages.jacket,
                      title: "Men's Harrington Jacket",
                      price: "\$148",
                      size: "M",
                      color: "Lemon",
                    ),
                    CartItemCard(
                      image: AppImages.pullover, 
                      title: "Men's Coaches Jacket",
                      price: "\$52.00",
                      size: "M",
                      color: "Black",
                    ),
                  ],
                ),
              ),
              
              _buildSummaryRow('Subtotal', '\$200', isBold: false),
              const SizedBox(height: 12),
              _buildSummaryRow('Shipping Cost', '\$8.00', isBold: false),
              const SizedBox(height: 12),
              _buildSummaryRow('Tax', '\$0.00', isBold: false),
              const SizedBox(height: 16),
              _buildSummaryRow('Total', '\$208', isBold: true),
              const SizedBox(height: 20),
              
              _buildCouponCode(),
              const SizedBox(height: 24),
              
              ElevatedCustomButton(
                title: 'Checkout',
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  //

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          iconPath: AppImages.arrowleftSvg,
          backgroundColor: Colors.grey[100],
          onTap: () => Navigations.naviagationPop(context),
        ),
        const Text('Cart', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
        const SizedBox(width: 40), 
      ],
    );
  }

  Widget _buildSummaryRow(String title, String amount, {required bool isBold}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 14, color: isBold ? Colors.black : Colors.grey, fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
        Text(amount, style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: isBold ? FontWeight.bold : FontWeight.w600)),
      ],
    );
  }

  Widget _buildCouponCode() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          SvgPicture.asset(AppImages.faviconSvg, width: 20, colorFilter: const ColorFilter.mode(Colors.green, BlendMode.srcIn)),
          const SizedBox(width: 12),
          const Expanded(child: Text('Enter Coupon Code', style: TextStyle(color: Colors.grey, fontSize: 14))),
          Container(
            width: 32, height: 32,
            decoration: const BoxDecoration(color: Color(0xFF8B5CF6), shape: BoxShape.circle),
            child: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 14),
          ),
        ],
      ),
    );
  }
}
*/