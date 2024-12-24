// استيراد مكتبة Flutter الأساسية
import 'package:flutter/material.dart';

// تعريف ويدجت مخصصة باسم custemCard
class customCard extends StatelessWidget {
  // تعريف المتغيرات (خصائص الويدجت)
  final String title; // اسم القارة الذي سيظهر على الزر
  final String imagePath; // مسار الصورة التي سيتم عرضها داخل البطاقة
  final Widget targetPage; // الصفحة التي سيتم الانتقال إليها عند الضغط على الزر

  // المُنشئ الخاص بالويدجت مع معامل اختياري لكل خاصية
  const customCard(
    this.title, // عنوان البطاقة
    this.imagePath, // مسار الصورة
    this.targetPage, // الصفحة المستهدفة
  );

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Card(
      color: Colors.transparent, // جعل خلفية البطاقة شفافة
      elevation: 0, // إزالة الظل من البطاقة
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        // استخدام الحد الأدنى من المساحة العمودية
        children: [
          // عرض الصورة داخل البطاقة
          Image.asset(
            imagePath, // مسار الصورة
            width: screenWidth * 0.20, // عرض الصورة
            height: screenHeight * 0.20, // ارتفاع الصورة
          ),
          const SizedBox(height: 7), // إضافة مسافة بين الصورة والزر
          // زر يحتوي على نص يتم عرضه
          OutlinedButton(
            onPressed: () {
              // عند الضغط على الزر، الانتقال إلى الصفحة المستهدفة
              Navigator.push(
                context, // السياق الحالي
                MaterialPageRoute(
                    builder: (context) =>
                        targetPage), // بناء المسار للصفحة التالية
              );
            },
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              side: const BorderSide(width: 5, color: Colors.white),
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 3,
                color: Colors.white,
              ),
            ), // النص المعروض على الزر
          )
        ],
      ),
    );
  }
}
