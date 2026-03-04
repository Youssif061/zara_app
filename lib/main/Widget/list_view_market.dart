import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/styles/text_styles.dart';

class ListViewMarket extends StatelessWidget {
  const ListViewMarket({super.key, this.TextCategory});
  final String? TextCategory;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              TextCategory!,
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w700),
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
          height: 285,
          width: double.infinity,
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    height: 240,
                    width: 160,
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(AppImages.jacket),
                              ),
                              Positioned(
                                top: 9,
                                right: 12,
                                child: SvgPicture.asset(
                                  AppImages.faviconSvg,
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Men\'s Harrington Jacket',
                          style: TextStyles.small.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '\$148.00',
                          style: TextStyles.caption.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
