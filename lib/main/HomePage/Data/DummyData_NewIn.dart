import 'package:zara_application/core/constant/app_images.dart';

class NewDataDU {
  final String name;
  final String price;
  final String imagePath;
  final String id;

  NewDataDU({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.id,
  });
}

List<NewDataDU> offers = [
  NewDataDU(
    id: "1",
    name: "Club Fleece Mens Jacket",
    price: "\$190.00",
    imagePath: AppImages.blueJacket,
  ),
  NewDataDU(
    id: "2",
    name: "Max Cirro Men's Slides",
    price: "\$148.00",
    imagePath: AppImages.slipper,
  ),

  NewDataDU(
    id: "3",
    name: "Fleece Skate Hoodie",
    price: "\$110.00",
    imagePath: AppImages.yellowhoddie,
  ),

  NewDataDU(
    id: "4",
    name: "Skate Jacket",
    price: "\$190.00",
    imagePath: AppImages.skateJacket,
  ),
  NewDataDU(
    id: "5",
    name: "Men's Fleece Pullover Hoodie",
    price: "\$100.00",
    imagePath: AppImages.pullover,
  ),
  NewDataDU(
    id: "6",
    name: "Men's Ice-Dye Pullover Hoodie",
    price: "\$190.00",
    imagePath: AppImages.hoddieColors,
  ),

  NewDataDU(
    id: "7",
    name: "Men's Workwear Jacket",
    price: "\$190.00",
    imagePath: AppImages.workWearJacket,
  ),
];
