import 'package:flutter/material.dart';

// --- Reusable Selection Box Widget ---
// Used for shipping address and payment method selection
class CheckoutSelectionBox extends StatelessWidget {
  final String title;
  final Widget content;
  final VoidCallback? onTap;

  const CheckoutSelectionBox({
    super.key,
    required this.title,
    required this.content,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: content),
                const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black87),
              ],
            ),
          ],
        ),
      ),
    );
  }
}