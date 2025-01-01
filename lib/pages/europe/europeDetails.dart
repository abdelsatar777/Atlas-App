// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

import '../../widgets/customDetailsPage.dart';
import 'europeCountries.dart';

// تعريف صفحة africaDetails كـ StatefulWidget لتتمكن من استخدام الحالة (State)
class europeDetails extends StatefulWidget {
  const europeDetails({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  _europeDetailsState createState() =>
      _europeDetailsState(); // إنشاء الحالة الخاصة بالصفحة
}

// تعريف حالة الصفحة (State)
class _europeDetailsState extends State<europeDetails> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => europeCountries()), // الانتقال إلى HomePage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      body: customDetailsPage(
          'Europe Continent',
          "Europe......",
          'assets/img/continents/EuropeContinent.png'),
    );
  }
}
