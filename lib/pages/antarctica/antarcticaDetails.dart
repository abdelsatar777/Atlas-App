// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

import '../../widgets/customDetailsPage.dart';
import 'antarcticaCountries.dart';

// تعريف صفحة africaDetails كـ StatefulWidget لتتمكن من استخدام الحالة (State)
class antarcticaDetails extends StatefulWidget {
  const antarcticaDetails({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  _antarcticaDetailsState createState() =>
      _antarcticaDetailsState(); // إنشاء الحالة الخاصة بالصفحة
}

// تعريف حالة الصفحة (State)
class _antarcticaDetailsState extends State<antarcticaDetails> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                antarcticaCountries()), // الانتقال إلى HomePage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      body: customDetailsPage('Antarctica Continent', "Antarctica....",
          'assets/img/continents/antarcticaContinent.png'),
    );
  }
}
