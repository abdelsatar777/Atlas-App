import 'package:flutter/material.dart';

class customDetailsPage extends StatelessWidget {
  final String? heading;
  final String? paragraph;
  final String? imgPath;

  const customDetailsPage(this.heading, this.paragraph, this.imgPath);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;


    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // وضع العناصر في منتصف الشاشة عموديًا
          children: [
            Text(
              heading!,
              style: const TextStyle(
                fontSize: 40, // حجم الخط
                fontWeight: FontWeight.bold, // وزن الخط
                color: Colors.white, // لون النص
                letterSpacing: 15, // مسافة بين الأحرف
              ),
            ),
            const SizedBox(height: 30), // مسافة بين النص الأول والعنصر التالي

            Text(
              paragraph!, // نص الوصف
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25, // حجم النص
                fontWeight: FontWeight.bold, // وزن النص
                color: Colors.white, // لون النص
                wordSpacing: 2,
              ),
            ),
            const SizedBox(height: 30), // مسافة بين النص والوصف والعنصر التالي
            Image.asset(
              imgPath!, // مسار صورة الـ GIF
              width: screenWidth * 0.6, // عرض الصورة
              height: screenHeight * 0.6, // ارتفاع الصورة
            ),
          ],
        ),
      ),
    );
  }
}
