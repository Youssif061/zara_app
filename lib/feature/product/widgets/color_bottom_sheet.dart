import 'package:flutter/material.dart';

// --- COLOR BOTTOM SHEET ---
class ColorBottomSheet extends StatelessWidget {
  final String selectedColor;
  final Color primaryColor;
  final Color Function(String) getColorDetails;
  final Function(String) onSelect;

  const ColorBottomSheet({
    super.key,
    required this.selectedColor,
    required this.primaryColor,
    required this.getColorDetails,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ['Orange', 'Black', 'Red', 'Yellow', 'Blue'];
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
                'Color',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(height: 24),
          ...colors.map((colorName) {
            final isSelected = colorName == selectedColor;
            final actualColor = getColorDetails(colorName);
            return GestureDetector(
              onTap: () => onSelect(colorName),
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
                      colorName,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Colors.white : Colors.black87,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: actualColor,
                            shape: BoxShape.circle,
                            border: isSelected
                                ? Border.all(color: Colors.white, width: 2)
                                : null,
                          ),
                        ),
                        if (isSelected) ...[
                          const SizedBox(width: 12),
                          const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ],
                    ),
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
