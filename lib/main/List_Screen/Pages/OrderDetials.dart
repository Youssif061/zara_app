import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zara_application/core/constant/app_images.dart';
import 'package:zara_application/core/styles/app_colors.dart';
import 'package:zara_application/core/styles/text_styles.dart';

class Orderdetials extends StatelessWidget {
  const Orderdetials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // استخدام Navigator.pop للرجوع بشكل صحيح
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios, size: 20),
        ),
        centerTitle: true,
        title: Text('Order #456765', style: TextStyles.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // قسم تتبع الطلب (Tracking)
            buildStep(title: 'Delivered', date: '28 May', isDone: false),
            buildStep(title: 'Shipped', date: '28 May', isDone: true),
            buildStep(title: 'Order Confirmed', date: '28 May', isDone: true),
            buildStep(
              title: 'Order Placed',
              date: '28 May',
              isDone: true,
              isLast: true,
            ),

            const SizedBox(height: 30),
            Text('Order Items', style: TextStyles.title.copyWith(fontSize: 18)),
            const SizedBox(height: 15),

            // كارت عدد العناصر
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(AppImages.listSvg, height: 24),
                  const SizedBox(width: 15),
                  Text('4 items', style: TextStyles.body),
                  const Spacer(),
                  Text(
                    'View All',
                    style: TextStyles.body.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
            Text(
              'Shipping details',
              style: TextStyles.title.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 15),

            // كارت عنوان الشحن
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2715 Ash Dr. San Jose, South Dakota 83475',
                    style: TextStyles.body,
                  ),
                  const SizedBox(height: 8),
                  Text('121-224-7890', style: TextStyles.body),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // "Widget" جانبي لرسم خطوات التتبع
  Widget buildStep({
    required String title,
    required String date,
    required bool isDone,
    bool isLast = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            // الدائرة (Checkmark)
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isDone ? AppColors.primaryColor : Colors.grey.shade200,
                shape: BoxShape.circle,
              ),
              child: isDone
                  ? const Icon(Icons.check, color: Colors.white, size: 16)
                  : null,
            ),
            // الخط الواصل (لو مش آخر خطوة)
            if (!isLast)
              Container(
                width: 2,
                height: 40,
                color: isDone ? AppColors.primaryColor : Colors.grey.shade200,
              ),
          ],
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w500,
                      color: isDone ? Colors.black : Colors.grey,
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyles.small.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
