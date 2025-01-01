// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

import '../../widgets/customDetailsPage.dart';
import 'asiaCountries.dart';

// تعريف صفحة africaDetails كـ StatefulWidget لتتمكن من استخدام الحالة (State)
class asiaDetails extends StatefulWidget {
  const asiaDetails({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  _asiaDetailsState createState() =>
      _asiaDetailsState(); // إنشاء الحالة الخاصة بالصفحة
}

// تعريف حالة الصفحة (State)
class _asiaDetailsState extends State<asiaDetails> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => asiaCountries()), // الانتقال إلى HomePage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      body: customDetailsPage(
          'Asia Continent',
          "Asia...",
          'assets/img/continents/asiaContinent.png'),
    );
  }
}
