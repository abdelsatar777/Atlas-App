// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // وضع العناصر في منتصف الشاشة عموديًا
          children: [
            // عنوان التطبيق "ATLAS"
            const Text(
              'ATLAS',
              style: TextStyle(
                fontSize: 50, // حجم الخط
                fontWeight: FontWeight.bold, // وزن الخط
                color: Colors.white, // لون النص
                letterSpacing: 15, // مسافة بين الأحرف
              ),
            ),
            const SizedBox(height: 30), // مسافة بين النص الأول والعنصر التالي

            // تقديم للتطبيق
            const Text(
              'Every Map Tells a Story of the World', // نص الوصف
              style: TextStyle(
                fontSize: 50, // حجم النص
                fontWeight: FontWeight.bold, // وزن النص
                color: Colors.white, // لون النص
                letterSpacing: 5, // مسافة بين الأحرف
              ),
            ),
            const SizedBox(height: 30), // مسافة بين النص والوصف والعنصر التالي

            // صورة متحركة للأرض (GIF)
            Image.asset(
              'assets/img/earthGIF.gif', // مسار صورة الـ GIF
              width: 700, // عرض الصورة
              height: 700, // ارتفاع الصورة
            ),
          ],
        ),
      ),
    );
  }
}
