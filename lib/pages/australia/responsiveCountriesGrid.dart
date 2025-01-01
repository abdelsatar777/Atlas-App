import 'package:flutter/material.dart';

import '../../widgets/customCard.dart';

class responsiveCountriesGrid extends StatelessWidget {
  const responsiveCountriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // تحديد عدد الأعمدة بناءً على عرض الشاشة
    int crossAxisCount;
    if (screenWidth < 600) {
      crossAxisCount = 2; // شاشة صغيرة (موبايل)
    } else if (screenWidth < 1200) {
      crossAxisCount = 4; // شاشة متوسطة (تابلت)
    } else {
      crossAxisCount = 6; // شاشة كبيرة (ديسكتوب)
    }

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8, // نسبة العرض إلى الارتفاع
      ),
      itemCount: australiaCountriesData.length,
      itemBuilder: (context, index) {
        final country = australiaCountriesData[index];
        return customCard(
          country['title'],
          country['flag'],
          country['targetPage'],
        );
      },
    );
  }
}

// صفحة البيانات الخاصة بالدول
final List<Map<String, dynamic>> australiaCountriesData = [];