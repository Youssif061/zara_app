import 'package:zara_application/core/constant/app_images.dart';

class DummyData {
  final String name;
  final String price;
  final String imagePath;
  final String id;

  DummyData({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.id,
  });
}

List<DummyData> dummyItems = [
  DummyData(
    id: "1",
    name: "Men's Harrington Jacket",
    price: "\$148.00",
    imagePath: AppImages.jacket,
  ),
  DummyData(
    id: "2",
    name: "Max Cirro Men's Slides",
    price: "\$148.00",
    imagePath: AppImages.slipper,
  ),
  DummyData(
    id: "3",
    name: "Men's Fleece Pullover Hoodie",
    price: "\$100.00",
    imagePath: AppImages.pullover,
  ),
  DummyData(
    id: "4",
    name: "Fleece Pullover Skate Hoodie",
    price: "\$100.00",
    imagePath: AppImages.blackPulloverl,
  ),
  DummyData(
    id: "5",
    name: "Fleece Skate Hoodie",
    price: "\$110.00",
    imagePath: AppImages.yellowhoddie,
  ),
  DummyData(
    id: "6",
    name: "Men's Ice-Dye Pullover Hoodie",
    price: "\$190.00",
    imagePath: AppImages.hoddieColors,
  ),
  DummyData(
    id: "7",
    name: "Club Fleece Mens Jacket",
    price: "\$190.00",
    imagePath: AppImages.blueJacket,
  ),
  DummyData(
    id: "8",
    name: "Skate Jacket",
    price: "\$190.00",
    imagePath: AppImages.skateJacket,
  ),
  DummyData(
    id: "9",
    name: "Men's Workwear Jacket",
    price: "\$190.00",
    imagePath: AppImages.workWearJacket,
  ),
];
