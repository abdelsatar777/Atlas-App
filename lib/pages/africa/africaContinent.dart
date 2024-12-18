// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

import 'africanCountries.dart';

// تعريف صفحة africaContinent كـ StatefulWidget لتتمكن من استخدام الحالة (State)
class africaContinent extends StatefulWidget {
  const africaContinent({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  _africaContinentState createState() =>
      _africaContinentState(); // إنشاء الحالة الخاصة بالصفحة
}

// تعريف حالة الصفحة (State)
class _africaContinentState extends State<africaContinent> {
  @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 7), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => africanCountries()), // الانتقال إلى HomePage
  //     );
  //   });
  // }

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
                letterSpacing: 15, // مسافة بين الأحرف
              ),
            ),
            const SizedBox(height: 30), // مسافة بين النص الأول والعنصر التالي

            // تقديم للتطبيق
            const Text(
              """Africa is the second-largest and second-most-populous continent on Earth, boasting a rich tapestry of cultures, languages, and histories.  
It encompasses 54 recognized countries, each with its own unique traditions and landscapes.""",
              // نص الوصف
              style: TextStyle(
                fontSize: 30, // حجم النص
                fontWeight: FontWeight.bold, // وزن النص
                color: Colors.white, // لون النص
              ),
            ),
            const SizedBox(height: 30), // مسافة بين النص والوصف والعنصر التالي

            // صورة متحركة للأرض (GIF)
            Image.asset(
              'assets/img/continents/africaContinent.png', // مسار صورة الـ GIF
              width: 150, // عرض الصورة
              height: 150, // ارتفاع الصورة
            ),
          ],
        ),
      ),
    );
  }
}
