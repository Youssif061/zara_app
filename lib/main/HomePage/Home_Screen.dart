import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';
import 'package:zara_application/core/widgets/custom_text_form_field.dart';
import 'package:zara_application/main/Widget/list_view_market.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          width: 24,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(AppImages.imageprofile, width: 40, height: 40),
          ),
        ),
        centerTitle: true,
        title: SvgPicture.asset(AppImages.manSvg, width: 72, height: 40),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppImages.baglSvg,
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                text: 'Search',
                height: 50,
                prefixIcon: Icon(Icons.search),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),

                  Padding(
                    padding: const EdgeInsets.all(0),

                    child: TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyles.caption.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 90,
                width: double.infinity,
                child: ListView.separated(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 80,
                      width: 65,
                      child: Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: ClipOval(
                                  child: Image.asset(AppImages.hoodie),
                                ),
                              ),
                            ),
                            Text('Hoodies'),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              ListViewMarket(TextCategory: "Top Selling"),
              ListViewMarket(TextCategory: "New In"),
            ],
          ),
        ),
      ),
    );
  }
}
