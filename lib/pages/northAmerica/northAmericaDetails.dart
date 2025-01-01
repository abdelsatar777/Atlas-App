// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

import '../../widgets/customDetailsPage.dart';
import 'northAmericaCountries.dart';

// تعريف صفحة africaDetails كـ StatefulWidget لتتمكن من استخدام الحالة (State)
class northAmericaDetails extends StatefulWidget {
  const northAmericaDetails({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  _northAmericaDetailsState createState() =>
      _northAmericaDetailsState(); // إنشاء الحالة الخاصة بالصفحة
}

// تعريف حالة الصفحة (State)
class _northAmericaDetailsState extends State<northAmericaDetails> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => northAmericaCountries()), // الانتقال إلى HomePage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      body: customDetailsPage(
          'North America Continent',
          "North America......",
          'assets/img/continents/northAmericaContinent.png'),
    );
  }
}
