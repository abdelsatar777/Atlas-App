// استيراد الحزم المطلوبة من Flutter
import 'package:flutter/material.dart';
import 'applicationDetails.dart'; // استيراد الصفحة الثانية التي سيتم الانتقال إليها

// تعريف صفحة LoadingPage كـ StatefulWidget لتتمكن من استخدام الحالة (State)
class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key}); // استخدام مفتاح اختياري لتحديد هوية الودجت

  @override
  _LoadingPageState createState() =>
      _LoadingPageState(); // إنشاء الحالة الخاصة بالصفحة
}

// تعريف حالة الصفحة (State)
class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    // تشغيل مؤقت لمدة 3 ثوانٍ ثم الانتقال إلى الصفحة التالية
    Future.delayed(const Duration(seconds: 3), () {
      // استخدام Navigator لدفع الصفحة الثانية مع استبدال الصفحة الحالية
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const applicationDetails()), // الانتقال إلى applicationDetails
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Colors.black, // تعيين لون خلفية الصفحة بالأسود
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // وضع المحتويات في منتصف الشاشة عموديًا
          children: [
            // عرض شعار التطبيق (Logo)
            Image.asset('assets/img/logo.png'), // تحديد مسار الصورة للشعار

            // عرض مؤشر التحميل (Loading Indicator)
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF7AC6EA)),
              // لون المؤشر
              strokeWidth: 6, // سمك خط المؤشر
            ),
          ],
        ),
      ),
    );
  }
}
