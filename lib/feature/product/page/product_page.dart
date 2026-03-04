import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/functions/navigations.dart';
import 'package:zara_application/feature/cart/page/cart_page.dart';
import 'package:zara_application/feature/product/widgets/color_bottom_sheet.dart';
import 'package:zara_application/feature/product/widgets/custom_option_row.dart';
import 'package:zara_application/feature/product/widgets/size_bottom_sheet.dart';

class ProductPage extends StatefulWidget {
  final String name;
  final String price;
  final String imagePath;

  const ProductPage({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
  });

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  // --- STATE VARIABLES ---
  String selectedSize = 'S';
  String selectedColor = "Orange";
  int quantity = 1;

  final Color primaryPurple = const Color(0xFF8B5CF6);

  // --- MAIN SCREEN BUILDER ---
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                const SizedBox(height: 16),

                _buildImageSlider(),
                const SizedBox(height: 16),

                _buildProductInfo(),
                const SizedBox(height: 16),

                _buildOptions(),

                _buildDescription(),

                _buildReviews(),

                const SizedBox(height: 120),
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildAddToBagButton(),
          ),
        ],
      ),
    );
  }

  // =========================================================
  // UI SECTIONS (FUNCTIONS)
  // =========================================================

  // --- SECTION 1: HEADER ---
  Widget _buildHeader(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigations.naviagationPop(context),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(AppImages.arrowleftSvg, width: 20),
                ),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SvgPicture.asset(AppImages.faviconSvg, width: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- SECTION 2: IMAGE SLIDER ---
  Widget _buildImageSlider() {
    return SizedBox(
      height: 280,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(widget.imagePath, width: 220, fit: BoxFit.cover),
          ),
          const SizedBox(width: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(widget.imagePath, width: 220, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }

  // --- SECTION 3: PRODUCT INFO ---
  Widget _buildProductInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            widget.price,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: primaryPurple,
            ),
          ),
        ],
      ),
    );
  }

  // --- SECTION 4: OPTIONS (SIZE, COLOR, QUANTITY) ---
  Widget _buildOptions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomOptionRow(
            label: 'Size',
            onTap: _showSizeSheet,
            trailingWidget: Row(
              children: [
                Text(
                  selectedSize,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 12),
                SvgPicture.asset(AppImages.arrowdownSvg, width: 14),
              ],
            ),
          ),
          const SizedBox(height: 12),

          CustomOptionRow(
            label: 'Color',
            onTap: _showColorSheet,
            trailingWidget: Row(
              children: [
                CircleAvatar(
                  backgroundColor: _getSelectedColor(selectedColor),
                  radius: 8,
                ),
                const SizedBox(width: 12),
                SvgPicture.asset(AppImages.arrowdownSvg, width: 14),
              ],
            ),
          ),
          const SizedBox(height: 12),

          CustomOptionRow(
            label: 'Quantity',
            trailingWidget: Row(
              children: [
                GestureDetector(
                  onTap: () => setState(() => quantity++),
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: primaryPurple,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppImages.addSvg,
                        width: 14,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '$quantity',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (quantity > 1) setState(() => quantity--);
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: primaryPurple,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppImages.minusSvg,
                        width: 14,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // --- SECTION 5: DESCRIPTION & SHIPPING ---
  Widget _buildDescription() {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
            style: TextStyle(fontSize: 13, height: 1.5, color: Colors.grey),
          ),
          SizedBox(height: 16),
          Text(
            'Shipping & Returns',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Free standard shipping and free 60-day returns',
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  // --- SECTION 6: REVIEWS ---
  Widget _buildReviews() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Reviews',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '4.5 Ratings',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          const Text(
            '213 Reviews',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 16),
          _reviewItemTemplate(),
        ],
      ),
    );
  }

  // --- SECTION 7: BOTTOM ACTION ---
  Widget _buildAddToBagButton() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24, top: 16),
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: primaryPurple,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Text(
                _totalPriceText(quantity),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigations.naviagationPush(context, CartPage());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Add to Bag',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // HELPER FUNCTIONS

  // --- REUSABLE TEMPLATE: REVIEW ITEM ---
  Widget _reviewItemTemplate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.grey[300],
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Alex Morgan',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: List.generate(
                5,
                (index) => Icon(
                  index < 4 ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                  size: 14,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.',
          style: TextStyle(fontSize: 13, color: Colors.grey, height: 1.4),
        ),
        const SizedBox(height: 8),
        const Text(
          '12days ago',
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
      ],
    );
  }

  // --- HELPER FUNCTION: GET COLOR ---
  Color _getSelectedColor(String colorName) {
    switch (colorName) {
      case 'Orange':
        return Colors.deepOrange;
      case 'Black':
        return Colors.black;
      case 'Red':
        return Colors.red;
      case 'Yellow':
        return Colors.amber;
      case 'Blue':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  double _priceValue() {
    try {
      return double.parse(widget.price.replaceAll(RegExp(r'[^0-9.]'), ''));
    } catch (e) {
      return 0.0;
    }
  }

  String _totalPriceText(int qty) {
    final total = _priceValue() * qty;
    return '\$${total.toStringAsFixed(2)}';
  }

  // --- BOTTOM SHEET: SIZE SELECTION ---
  void _showSizeSheet() {
    showModalBottomSheet(
      isScrollControlled: true,

      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return SizeBottomSheet(
          selectedSize: selectedSize,
          primaryColor: primaryPurple,
          onSelect: (size) {
            setState(() => selectedSize = size);
            Navigator.pop(context);
          },
        );
      },
    );
  }

  // --- BOTTOM SHEET: COLOR SELECTION ---
  void _showColorSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return ColorBottomSheet(
          selectedColor: selectedColor,
          primaryColor: primaryPurple,
          getColorDetails: _getSelectedColor,
          onSelect: (color) {
            setState(() => selectedColor = color);
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
