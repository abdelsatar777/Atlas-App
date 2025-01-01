// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

import '../../widgets/customDetailsPage.dart';
import 'australiaCountries.dart';

// تعريف صفحة africaDetails كـ StatefulWidget لتتمكن من استخدام الحالة (State)
class australiaDetails extends StatefulWidget {
  const australiaDetails({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  _australiaDetailsState createState() =>
      _australiaDetailsState(); // إنشاء الحالة الخاصة بالصفحة
}

// تعريف حالة الصفحة (State)
class _australiaDetailsState extends State<australiaDetails> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                australiaCountries()), // الانتقال إلى HomePage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      body: customDetailsPage('Australia Continent', "Australia...",
          'assets/img/continents/australiaContinent.png'),
    );
  }
}
