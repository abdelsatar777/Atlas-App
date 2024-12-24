// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';
import '../widgets/customDetailsPage.dart';
import 'homePage.dart'; // استيراد الصفحة الرئيسية HomePage

// تعريف صفحة applicationDetails كـ StatefulWidget لتتمكن من استخدام الحالة (State)
class applicationDetails extends StatefulWidget {
  const applicationDetails({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  _applicationDetailsState createState() =>
      _applicationDetailsState(); // إنشاء الحالة الخاصة بالصفحة
}

// تعريف حالة الصفحة (State)
class _applicationDetailsState extends State<applicationDetails> {
  @override
  void initState() {
    super.initState();
    // مؤقت لعرض الصفحة لمدة 7 ثوانٍ قبل الانتقال إلى الصفحة الرئيسية HomePage
    Future.delayed(const Duration(seconds: 7), () {
      // الانتقال إلى الصفحة الرئيسية مع استبدال الصفحة الحالية
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const HomePage()), // الانتقال إلى HomePage
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      body: customDetailsPage('ATLAS', 'Every Map Tells a Story of the World',
          'assets/img/earthGIF.gif'),
    );
  }
}
