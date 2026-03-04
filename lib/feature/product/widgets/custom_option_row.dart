import 'package:flutter/material.dart';

// --- CUSTOM OPTION ROW WIDGET ---
// A reusable widget for displaying an option with a label and a trailing widget.
class CustomOptionRow extends StatelessWidget {
  final String label;
  final Widget trailingWidget;
  final VoidCallback? onTap;

  const CustomOptionRow({
    super.key,
    required this.label,
    required this.trailingWidget,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label, 
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
            trailingWidget,
          ],
        ),
      ),
    );
  }
}