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
                      'assets/img/countries/africaCountryMap.png',
                      africaContinent()),
                  customCard('Asia', 'assets/img/countries/asiaMapCountry.png',
                      africaContinent()),
                  customCard(
                      'Australia',
                      'assets/img/countries/australiaMapCountry.png',
                      africaContinent()),
                  customCard(
                      'Europe',
                      'assets/img/countries/europeMapCountry.png',
                      africaContinent()),
                  customCard(
                      'Antarctica',
                      'assets/img/countries/antarcticaMapCountry.png',
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
                      'assets/img/countries/northAmericaMapCountry.png',
                      africaContinent()),
                  customCard(
                      'South America',
                      'assets/img/countries/southAmericaMapCountry.png',
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
