// استيراد مكتبة Flutter الأساسية
import 'package:flutter/material.dart';
import '../widgets/customCard.dart';
import 'africa/africaContinent.dart';

// تعريف الصفحة الرئيسية HomePage كـ StatelessWidget لأنها لا تحتاج إلى حالة (State)
class HomePage extends StatelessWidget {
  const HomePage({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // تعيين خلفية الصفحة باللون الأسود
      // محتوى الصفحة الرئيسية
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // توسيط العمود عموديًا
        crossAxisAlignment: CrossAxisAlignment.center, // توسيط العمود أفقيًا
        children: [
          // عنوان الصفحة
          const Text(
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
                      'assets/img/continents/africaCountryMap.png',
                      africaContinent()),
                  customCard('Asia', 'assets/img/continents/asiaMapCountry.png',
                      africaContinent()),
                  customCard(
                      'Australia',
                      'assets/img/continents/australiaMapCountry.png',
                      africaContinent()),
                  customCard(
                      'Europe',
                      'assets/img/continents/europeMapCountry.png',
                      africaContinent()),
                  customCard(
                      'Antarctica',
                      'assets/img/continents/antarcticaMapCountry.png',
                      africaContinent()),
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
                      'assets/img/continents/northAmericaMapCountry.png',
                      africaContinent()),
                  customCard(
                      'South America',
                      'assets/img/continents/southAmericaMapCountry.png',
                      africaContinent()),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
