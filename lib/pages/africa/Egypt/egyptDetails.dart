// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

import '../../../widgets/customDetailsPage.dart';
import '../../antarctica/Country.dart';

// تعريف صفحة africaDetails كـ StatefulWidget لتتمكن من استخدام الحالة (State)
class egyptDetails extends StatefulWidget {
  const egyptDetails({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  _egyptDetailsState createState() =>
      _egyptDetailsState(); // إنشاء الحالة الخاصة بالصفحة
}

// تعريف حالة الصفحة (State)
class _egyptDetailsState extends State<egyptDetails> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => egyptCountry()), // الانتقال إلى HomePage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      body: customDetailsPage(
          'Egypt Country', 'Egypt...', 'assets/img/africaCountries/Egypt.png'),
    );
  }
}
