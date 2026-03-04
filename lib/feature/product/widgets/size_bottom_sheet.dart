import 'package:flutter/material.dart';

// --- SIZE BOTTOM SHEET ---
class SizeBottomSheet extends StatelessWidget {
  final String selectedSize;
  final Color primaryColor;
  final Function(String) onSelect;

  const SizeBottomSheet({
    super.key,
    required this.selectedSize,
    required this.primaryColor,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ['S', 'M', 'L', 'XL', '2XL'];
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 24),
              const Text(
                'Size',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(height: 24),
          ...sizes.map((size) {
            final isSelected = size == selectedSize;
            return GestureDetector(
              onTap: () => onSelect(size),
              child: Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? primaryColor : Colors.grey[100],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      size,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Colors.white : Colors.black87,
                      ),
                    ),
                    if (isSelected)
                      const Icon(Icons.check, color: Colors.white, size: 18),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
