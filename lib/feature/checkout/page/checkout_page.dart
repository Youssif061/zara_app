import 'package:flutter/material.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/functions/navigations.dart';
import 'package:zara_application/core/widgets/custom_icon_buttom.dart';
import 'package:zara_application/feature/checkout/widgets/checkout_selection_box.dart';

// --- Main Checkout Page ---
class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

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
              // --- Header Section ---
              _buildHeader(context),
              const SizedBox(height: 32),

              // --- Shipping Address Section ---
              CheckoutSelectionBox(
                title: 'Shipping Address',
                content: const Text(
                  '2715 Ash Dr. San Jose, South Dakot...',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () {},
              ),
              const SizedBox(height: 16),

              // --- Payment Method Section ---
              CheckoutSelectionBox(
                title: 'Payment Method',
                content: Row(
                  children: [
                    const Text(
                      '**** 4187',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Row(
                      children: [
                        Container(
                          width: 14,
                          height: 14,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(-6, 0),
                          child: Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(0.8),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                onTap: () {},
              ),

              // --- Flexible Space ---
              const Spacer(),

              // --- Order Summary Section ---
              _buildSummaryRow('Subtotal', '\$200', isBold: false),
              const SizedBox(height: 12),
              _buildSummaryRow('Shipping Cost', '\$8.00', isBold: false),
              const SizedBox(height: 12),
              _buildSummaryRow('Tax', '\$0.00', isBold: false),
              const SizedBox(height: 16),
              _buildSummaryRow('Total', '\$208', isBold: true),
              const SizedBox(height: 32),

              // --- Place Order Button ---
              _buildPlaceOrderButton(context),
            ],
          ),
        ),
      ),
    );
  }

  // --- UI Helper Methods ---

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          iconPath: AppImages.arrowleftSvg,
          backgroundColor: Colors.grey[100],
          onTap: () => Navigations.naviagationPop(context),
        ),
        const Text(
          'Checkout',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 40),
      ],
    );
  }

  Widget _buildSummaryRow(String title, String amount, {required bool isBold}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: isBold ? Colors.black : Colors.grey,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildPlaceOrderButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8B5CF6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 0,
        ),
        onPressed: () {
          // Navigate to Order Placed Screen
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$208',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Place Order',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
