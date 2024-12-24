// استيراد مكتبة Flutter الأساسية
import 'package:flutter/material.dart';
import '../widgets/customCard.dart';
import 'africa/africaDetails.dart';

// تعريف الصفحة الرئيسية HomePage كـ StatelessWidget لأنها لا تحتاج إلى حالة (State)
class HomePage extends StatelessWidget {
  const HomePage({super.key}); // مفتاح اختياري لتعريف هوية الودجت

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // العنوان الرئيسي
            const Text(
              'Choose a Continent',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 10,
              ),
            ),
            SizedBox(height: 50),
            // الشبكة (GridView)
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, // عدد الأعمدة
                ),
                itemCount: continents.length,
                // عدد البطاقات
                itemBuilder: (context, index) {
                  final continent = continents[index];
                  return customCard(
                    continent['title'],
                    continent['imagePath'],
                    continent['targetPage'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// البيانات الخاصة بالقارات
final List<Map<String, dynamic>> continents = [
  {
    'title': 'Africa',
    'imagePath': 'assets/img/countries/africaCountries.png',
    'targetPage': africaDetails(),
  },
  {
    'title': 'Asia',
    'imagePath': 'assets/img/countries/asiaCountries.png',
    'targetPage': africaDetails(),
  },
  {
    'title': 'Australia',
    'imagePath': 'assets/img/countries/australiaCountries.png',
    'targetPage': africaDetails(),
  },
  {
    'title': 'Europe',
    'imagePath': 'assets/img/countries/europeCountries.png',
    'targetPage': africaDetails(),
  },
  {
    'title': 'Antarctica',
    'imagePath': 'assets/img/countries/antarcticaCountries.png',
    'targetPage': africaDetails(),
  },
  {
    'title': 'North America',
    'imagePath': 'assets/img/countries/northAmericaCountries.png',
    'targetPage': africaDetails(),
  },
  {
    'title': 'South America',
    'imagePath': 'assets/img/countries/southAmericaCountries.png',
    'targetPage': africaDetails(),
  },
];
