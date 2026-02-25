import 'package:zara_application/core/constant/app_images.dart';

class DummyWishlistData {
  final String image;
  final String name;
  final String price;

  DummyWishlistData({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<DummyWishlistData> dummyWishlistData = [
  DummyWishlistData(
    image: AppImages.gymbags,
    name: "Nike Fuel Pack",
    price: "\$32.00",
  ),
  DummyWishlistData(
    image: AppImages.shoes,
    name: "Men's Running Shoes",
    price: "\$45.00",
  ),
  DummyWishlistData(
    image: AppImages.hoddieColors,
    name: "Men's Hoddie ",
    price: "\$45.00",
  ),
  DummyWishlistData(
    image: AppImages.jacket,
    name: "Men's Jacket",
    price: "\$55.00",
  ),
];
