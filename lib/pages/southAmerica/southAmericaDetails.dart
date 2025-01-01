// استيراد المكتبات المطلوبة
import 'package:app/pages/southAmerica/southAmericaCountries.dart';
import 'package:flutter/material.dart';

import '../../widgets/customDetailsPage.dart';

// تعريف صفحة africaDetails كـ StatefulWidget لتتمكن من استخدام الحالة (State)
class southAmericaDetails extends StatefulWidget {
  const southAmericaDetails({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  _southAmericaDetailsState createState() =>
      _southAmericaDetailsState(); // إنشاء الحالة الخاصة بالصفحة
}

// تعريف حالة الصفحة (State)
class _southAmericaDetailsState extends State<southAmericaDetails> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => southAmericaCountries()), // الانتقال إلى HomePage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      body: customDetailsPage('South America Continent', "South America....",
          'assets/img/continents/southAmericaContinent.png'),
    );
  }
}
