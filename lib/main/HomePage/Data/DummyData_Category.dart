import 'package:zara_application/core/constant/app_images.dart';

class DummyCA {
  final String name;
  final String imagePath;
  final String id;

  DummyCA({required this.name, required this.imagePath, required this.id});
}

List<DummyCA> offersInCate = [
  DummyCA(id: "1", name: "Hoodies", imagePath: AppImages.hoodie),
  DummyCA(id: "2", name: "Shorts", imagePath: AppImages.short),
  DummyCA(id: "3", name: "Shoes", imagePath: AppImages.shoes),
  DummyCA(id: "4", name: "Bag", imagePath: AppImages.gymbags),
  DummyCA(id: "5", name: "Accessories", imagePath: AppImages.accessories),
];
