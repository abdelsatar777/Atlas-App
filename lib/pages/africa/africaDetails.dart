// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

import '../../widgets/customDetailsPage.dart';
import 'africanCountries.dart';

// تعريف صفحة africaDetails كـ StatefulWidget لتتمكن من استخدام الحالة (State)
class africaDetails extends StatefulWidget {
  const africaDetails({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  _africaDetailsState createState() =>
      _africaDetailsState(); // إنشاء الحالة الخاصة بالصفحة
}

// تعريف حالة الصفحة (State)
class _africaDetailsState extends State<africaDetails> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => africanCountries()), // الانتقال إلى HomePage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      body: customDetailsPage(
          'Africa Continent',
          """Africa is the second-largest and second-most-populous continent on Earth, boasting a rich tapestry of cultures, languages, and histories. It encompasses 54 recognized countries, each with its own unique traditions and landscapes.""",
          'assets/img/continents/africaContinent.png'),
    );
  }
}
