import 'package:flutter/material.dart';

import '../../widgets/customCard.dart';
import 'austriaCountry.dart';

class responsiveCountriesGrid extends StatelessWidget {
  const responsiveCountriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // تحديد عدد الأعمدة بناءً على عرض الشاشة
    int crossAxisCount;
    if (screenWidth < 600) {
      crossAxisCount = 2; // شاشة صغيرة (موبايل)
    } else if (screenWidth < 1200) {
      crossAxisCount = 4; // شاشة متوسطة (تابلت)
    } else {
      crossAxisCount = 6; // شاشة كبيرة (ديسكتوب)
    }

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8, // نسبة العرض إلى الارتفاع
      ),
      itemCount: africanCountriesData.length,
      itemBuilder: (context, index) {
        final country = africanCountriesData[index];
        return customCard(
          country['title'],
          country['flag'],
          country['targetPage'],
        );
      },
    );
  }
}

// صفحة البيانات الخاصة بالدول
final List<Map<String, dynamic>> africanCountriesData = [
  {
    'title': 'Austria',
    'flag': 'assets/img/Europe Countries/Austria.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Belgium',
    'flag': 'assets/img/Europe Countries/Belgium.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Bulgaria',
    'flag': 'assets/img/Europe Countries/Bulgaria.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Croatia',
    'flag': 'assets/img/Europe Countries/Croatia.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Cyprus',
    'flag': 'assets/img/Europe Countries/Cyprus.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Czechia',
    'flag': 'assets/img/Europe Countries/Czechia.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Denmark',
    'flag': 'assets/img/Europe Countries/Denmark.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Estonia',
    'flag': 'assets/img/Europe Countries/Estonia.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Finland',
    'flag': 'assets/img/Europe Countries/Finland.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'France',
    'flag': 'assets/img/Europe Countries/France.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Germany',
    'flag': 'assets/img/Europe Countries/Germany.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Greece',
    'flag': 'assets/img/Europe Countries/Greece.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Hungary',
    'flag': 'assets/img/Europe Countries/Hungary.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Ireland',
    'flag': 'assets/img/Europe Countries/Ireland.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Italy',
    'flag': 'assets/img/Europe Countries/Italy.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Lithuania',
    'flag': 'assets/img/Europe Countries/Lithuania.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Luxembourg',
    'flag': 'assets/img/Europe Countries/Luxembourg.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Malta',
    'flag': 'assets/img/Europe Countries/Malta.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Netherlands',
    'flag': 'assets/img/Europe Countries/Netherlands.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Poland',
    'flag': 'assets/img/Europe Countries/Poland.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Portugal',
    'flag': 'assets/img/Europe Countries/Portugal.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Romania',
    'flag': 'assets/img/Europe Countries/Romania.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Slovakia',
    'flag': 'assets/img/Europe Countries/Slovakia.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Slovenia',
    'flag': 'assets/img/Europe Countries/Slovenia.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Spain',
    'flag': 'assets/img/Europe Countries/Spain.png',
    'targetPage': austriaCountry()
  },
  {
    'title': 'Sweden',
    'flag': 'assets/img/Europe Countries/Sweden.png',
    'targetPage': austriaCountry()
  },
];
