// استيراد المكتبات والصفحات اللازمة
import 'package:app/pages/homePage.dart'; // استيراد الصفحة الرئيسية للتطبيق
import 'package:app/pages/LoadingPage.dart'; // استيراد صفحة التحميل
import 'package:flutter/material.dart'; // استيراد مكتبة Flutter الأساسية

// نقطة البداية للتطبيق
void main() {
  runApp(const AtlasApp()); // استدعاء التطبيق الرئيسي AtlasApp
}

// تعريف التطبيق الرئيسي كـ StatelessWidget لأنه لا يحتاج إلى حالة (State)
class AtlasApp extends StatelessWidget {
  const AtlasApp({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // إخفاء شريط "DEBUG" عند تشغيل التطبيق

      // تخصيص الثيم العام للتطبيق
      theme: ThemeData(
        fontFamily: 'Arial', // تعيين خط التطبيق إلى 'Arial'
      ),

      // home: const HomePage(), // تحديد الصفحة الرئيسية للتطبيق
      home:
          const LoadingPage(), // يمكن استخدام هذه الصفحة كبداية بدلاً من الصفحة الرئيسية
    );
  }
}
