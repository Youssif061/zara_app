import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/functions/navigations.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/widgets/custom_icon_buttom.dart';
import 'package:zara_application/feature/search/data/dummy_data.dart';
import 'package:zara_application/feature/search/widgets/filteration_containers.dart';
import 'package:zara_application/feature/search/widgets/search_items.dart';

class SearchPage extends StatefulWidget {
  //final List<DummyData> items;
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<DummyData> filterdItems = [];
  bool isReached = false;
  final TextEditingController textController = TextEditingController();

  void filterdMethod(String nameItem) {
    isReached = nameItem.isNotEmpty;
    setState(() {
      if (nameItem.isEmpty) {
        filterdItems = [];
      } else {
        filterdItems = dummyItems
            .where((item) => item.name.toLowerCase().contains(nameItem))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomIconButton(
                  iconPath: AppImages.arrowleftSvg,
                  backgroundColor: AppColors.lightGreyColor,
                  onTap: () {
                    Navigations.naviagationPop(context);
                  },
                ),
                Gap(16),
                SizedBox(
                  width: 310,
                  height: 40,
                  child: TextFormField(
                    controller: textController,
                    onChanged: (value) {
                      filterdMethod(value);
                    },
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(AppImages.searchNormalSvg),
                      ),
                      hint: Text("Search Here"),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            textController.clear();
                            filterdMethod('');
                          },
                          child: SvgPicture.asset(AppImages.wrongSvg),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Gap(24),
            FilterationContainers(filterdItems: filterdItems),
            Gap(12),
            filterdItems.isEmpty
                ? Text("${filterdItems.length} Results Found")
                : Text("${filterdItems.length} Results Found"),
            Gap(12),
            Expanded(
              child: Builder(
                builder: (context) {
                  if (!isReached) {
                    return const SizedBox();
                  }

                  if (filterdItems.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Lottie.asset(AppImages.notFoundJason, height: 150),
                          const SizedBox(height: 16),
                          const Text(
                            "No results found",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  return SearchItems(items: filterdItems);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
