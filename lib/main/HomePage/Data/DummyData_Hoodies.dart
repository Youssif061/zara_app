import 'package:zara_application/core/constant/app_images.dart';

class DummyData_Hoodies {
  final String name;
  final String price;
  final String imagePath;
  final String id;

  DummyData_Hoodies({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.id,
  });
}

List<DummyData_Hoodies> offers = [
  DummyData_Hoodies(
    id: "1",
    name: "Club Fleece Mens Jacket",
    price: "\$190.00",
    imagePath: AppImages.blueJacket,
  ),
  DummyData_Hoodies(
    id: "2",
    name: "Fleece Pullover Skate Hoodie",
    price: "\$148.00",
    imagePath: AppImages.blackPulloverl,
  ),

  DummyData_Hoodies(
    id: "3",
    name: "Fleece Skate Hoodie",
    price: "\$110.00",
    imagePath: AppImages.yellowhoddie,
  ),

  DummyData_Hoodies(
    id: "4",
    name: "Skate Jacket",
    price: "\$190.00",
    imagePath: AppImages.skateJacket,
  ),
  DummyData_Hoodies(
    id: "5",
    name: "Men's Fleece Pullover Hoodie",
    price: "\$100.00",
    imagePath: AppImages.pullover,
  ),
  DummyData_Hoodies(
    id: "6",
    name: "Men's Ice-Dye Pullover Hoodie",
    price: "\$190.00",
    imagePath: AppImages.hoddieColors,
  ),

  DummyData_Hoodies(
    id: "7",
    name: "Men's Workwear Jacket",
    price: "\$190.00",
    imagePath: AppImages.workWearJacket,
  ),
];
