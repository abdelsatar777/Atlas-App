// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // وضع العناصر في منتصف الشاشة عموديًا
          children: [
            const Text(
              'Africa Continent',
              style: TextStyle(
                fontSize: 50,
                // حجم الخط
                fontWeight: FontWeight.bold,
                // وزن الخط
                color: Colors.white,
                // لون النص
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                letterSpacing: 15, // مسافة بين الأحرف
              ),
            ),
            const SizedBox(height: 30), // مسافة بين النص الأول والعنصر التالي

            // تقديم للتطبيق
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 150),
              child: Text(
                textAlign: TextAlign.center,
                """Africa is the second-largest and second-most-populous continent on Earth, boasting a rich tapestry of cultures, languages, and histories.  
It encompasses 54 recognized countries, each with its own unique traditions and landscapes.""",
                // نص الوصف
                style: TextStyle(
                  fontSize: 30, // حجم النص
                  fontWeight: FontWeight.bold, // وزن النص
                  color: Colors.white, // لون النص
                ),
              ),
            ),
            const SizedBox(height: 30), // مسافة بين النص والوصف والعنصر التالي

            // صورة متحركة للأرض (GIF)
            Image.asset(
              'assets/img/continents/africaContinent.png', // مسار صورة الـ GIF
              width: 370, // عرض الصورة
              height: 370, // ارتفاع الصورة
            ),
          ],
        ),
      ),
    );
  }
}
