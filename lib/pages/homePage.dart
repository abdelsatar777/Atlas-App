// استيراد مكتبة Flutter الأساسية
import 'package:flutter/material.dart';
import '../widgets/customCard.dart';
import 'africa/africaDetails.dart';

// تعريف الصفحة الرئيسية HomePage كـ StatelessWidget لأنها لا تحتاج إلى حالة (State)
class HomePage extends StatelessWidget {
  const HomePage({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      // محتوى الصفحة الرئيسية
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // توسيط العمود عموديًا
        crossAxisAlignment: CrossAxisAlignment.center, // توسيط العمود أفقيًا
        children: [
          // عنوان الصفحة
          Text(
            'Choose a Continent', // نص العنوان
            style: TextStyle(
              fontSize: 50, // حجم النص
              fontWeight: FontWeight.bold, // وزن النص (عريض)
              color: Colors.white, // لون النص
              letterSpacing: 10, // مسافة بين الأحرف
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center, // توسيط العمود عموديًا
            crossAxisAlignment: CrossAxisAlignment.center,
            // توسيط العمود أفقيًا
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // توسيط العمود عموديًا
                crossAxisAlignment: CrossAxisAlignment.center,
                // توسيط العمود أفقيًا
                children: [
                  customCard(
                      'Africa',
                      'assets/img/countries/africaCountries.png',
                      africaDetails()),
                  customCard('Asia', 'assets/img/countries/asiaCountries.png',
                      africaDetails()),
                  customCard(
                      'Australia',
                      'assets/img/countries/australiaCountries.png',
                      africaDetails()),
                  customCard(
                      'Europe',
                      'assets/img/countries/europeCountries.png',
                      africaDetails()),
                  customCard(
                      'Antarctica',
                      'assets/img/countries/antarcticaCountries.png',
                      africaDetails()),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // توسيط العمود عموديًا
                crossAxisAlignment: CrossAxisAlignment.center,
                // توسيط العمود أفقيًا
                children: [
                  customCard(
                      'North America',
                      'assets/img/countries/northAmericaCountries.png',
                      africaDetails()),
                  customCard(
                      'South America',
                      'assets/img/countries/southAmericaCountries.png',
                      africaDetails()),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
