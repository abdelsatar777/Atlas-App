import 'package:flutter/material.dart';

import '../../widgets/customCard.dart';
import 'Egypt/egyptDetails.dart';

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
    'title': 'Egypt',
    'flag': 'assets/img/africaCountries/Egypt.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Algeria',
    'flag': 'assets/img/africaCountries/Algeria.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Angola',
    'flag': 'assets/img/africaCountries/Angola.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Benin',
    'flag': 'assets/img/africaCountries/Benin.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Botswana',
    'flag': 'assets/img/africaCountries/Botswana.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Burkina Faso',
    'flag': 'assets/img/africaCountries/Burkina Faso.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Burundi',
    'flag': 'assets/img/africaCountries/Burundi.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Cameroon',
    'flag': 'assets/img/africaCountries/Cameroon.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Cape Verde',
    'flag': 'assets/img/africaCountries/Cape Verde.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Chad',
    'flag': 'assets/img/africaCountries/Chad.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Comoros',
    'flag': 'assets/img/africaCountries/Comoros.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Congo',
    'flag': 'assets/img/africaCountries/Congo.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Djibouti',
    'flag': 'assets/img/africaCountries/Djibouti.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Eritrea',
    'flag': 'assets/img/africaCountries/Eritrea.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Eswatini',
    'flag': 'assets/img/africaCountries/Eswatini.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Ethiopia',
    'flag': 'assets/img/africaCountries/Ethiopia.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Gabon',
    'flag': 'assets/img/africaCountries/Gabon.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Gambia',
    'flag': 'assets/img/africaCountries/Gambia.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Ghana',
    'flag': 'assets/img/africaCountries/Ghana.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Guinea',
    'flag': 'assets/img/africaCountries/Guinea.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Guinea bissau',
    'flag': 'assets/img/africaCountries/Guinea bissau.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Ivory Coast',
    'flag': 'assets/img/africaCountries/Ivory Coast.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Kenya',
    'flag': 'assets/img/africaCountries/Kenya.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Lesotho',
    'flag': 'assets/img/africaCountries/Lesotho.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Liberia',
    'flag': 'assets/img/africaCountries/Liberia.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Libya',
    'flag': 'assets/img/africaCountries/Libya.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Madagascar',
    'flag': 'assets/img/africaCountries/Madagascar.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Malawi',
    'flag': 'assets/img/africaCountries/Malawi.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Mali',
    'flag': 'assets/img/africaCountries/Mali.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Mauritania',
    'flag': 'assets/img/africaCountries/Mauritania.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Mauritius',
    'flag': 'assets/img/africaCountries/Mauritius.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Morocco',
    'flag': 'assets/img/africaCountries/Morocco.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Mozambique',
    'flag': 'assets/img/africaCountries/Mozambique.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Namibia',
    'flag': 'assets/img/africaCountries/Namibia.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Niger',
    'flag': 'assets/img/africaCountries/Niger.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Nigeria',
    'flag': 'assets/img/africaCountries/Nigeria.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Rwanda',
    'flag': 'assets/img/africaCountries/Rwanda.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Senegal',
    'flag': 'assets/img/africaCountries/Senegal.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Seychelles',
    'flag': 'assets/img/africaCountries/Seychelles.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Sierra Leone',
    'flag': 'assets/img/africaCountries/Sierra Leone.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Somalia',
    'flag': 'assets/img/africaCountries/Somalia.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'South Africa',
    'flag': 'assets/img/africaCountries/South Africa.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'South Sudan',
    'flag': 'assets/img/africaCountries/South sudan.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Sudan',
    'flag': 'assets/img/africaCountries/Sudan.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Tanzania',
    'flag': 'assets/img/africaCountries/Tanzania.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Togo',
    'flag': 'assets/img/africaCountries/Togo.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Tunisia',
    'flag': 'assets/img/africaCountries/Tunisia.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Uganda',
    'flag': 'assets/img/africaCountries/Uganda.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Zambia',
    'flag': 'assets/img/africaCountries/Zambia.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Zimbabwe',
    'flag': 'assets/img/africaCountries/Zimbabwe.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Equatorial Guinea',
    'flag': 'assets/img/africaCountries/Equatorial Guinea.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Central African Republic',
    'flag': 'assets/img/africaCountries/Central African Republic.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Democratic Republic of congo',
    'flag': 'assets/img/africaCountries/Democratic Republic of congo.png',
    'targetPage': egyptDetails()
  },
  {
    'title': 'Sao Tome and principe',
    'flag': 'assets/img/africaCountries/Sao Tome and principe.png',
    'targetPage': egyptDetails()
  },
];
