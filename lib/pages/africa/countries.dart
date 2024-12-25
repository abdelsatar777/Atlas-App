import 'package:flutter/material.dart';

import '../../widgets/customCard.dart';
import 'egyptCountry.dart';

class countries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6, // عدد الأعمدة
          mainAxisSpacing: 30,
        ),
        itemCount: africanCountries.length, // عدد الدول
        itemBuilder: (context, index) {
          final country = africanCountries[index];
          return customCard(
            country['title'],
            country['flag'],
            country['targetPage'],
          );
        },
      ),
    );
  }

  // صفحة البيانات الخاصة بالدول
  final List<Map<String, dynamic>> africanCountries = [
    {
      'title': 'Egypt',
      'flag': 'assets/img/africaCountries/Egypt.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Algeria',
      'flag': 'assets/img/africaCountries/Algeria.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Angola',
      'flag': 'assets/img/africaCountries/Angola.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Benin',
      'flag': 'assets/img/africaCountries/Benin.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Botswana',
      'flag': 'assets/img/africaCountries/Botswana.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Burkina Faso',
      'flag': 'assets/img/africaCountries/Burkina Faso.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Burundi',
      'flag': 'assets/img/africaCountries/Burundi.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Cameroon',
      'flag': 'assets/img/africaCountries/Cameroon.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Cape Verde',
      'flag': 'assets/img/africaCountries/Cape Verde.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Chad',
      'flag': 'assets/img/africaCountries/Chad.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Comoros',
      'flag': 'assets/img/africaCountries/Comoros.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Congo',
      'flag': 'assets/img/africaCountries/Congo.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Djibouti',
      'flag': 'assets/img/africaCountries/Djibouti.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Eritrea',
      'flag': 'assets/img/africaCountries/Eritrea.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Eswatini',
      'flag': 'assets/img/africaCountries/Eswatini.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Ethiopia',
      'flag': 'assets/img/africaCountries/Ethiopia.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Gabon',
      'flag': 'assets/img/africaCountries/Gabon.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Gambia',
      'flag': 'assets/img/africaCountries/Gambia.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Ghana',
      'flag': 'assets/img/africaCountries/Ghana.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Guinea',
      'flag': 'assets/img/africaCountries/Guinea.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Guinea bissau',
      'flag': 'assets/img/africaCountries/Guinea bissau.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Ivory Coast',
      'flag': 'assets/img/africaCountries/Ivory Coast.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Kenya',
      'flag': 'assets/img/africaCountries/Kenya.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Lesotho',
      'flag': 'assets/img/africaCountries/Lesotho.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Liberia',
      'flag': 'assets/img/africaCountries/Liberia.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Libya',
      'flag': 'assets/img/africaCountries/Libya.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Madagascar',
      'flag': 'assets/img/africaCountries/Madagascar.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Malawi',
      'flag': 'assets/img/africaCountries/Malawi.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Mali',
      'flag': 'assets/img/africaCountries/Mali.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Mauritania',
      'flag': 'assets/img/africaCountries/Mauritania.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Mauritius',
      'flag': 'assets/img/africaCountries/Mauritius.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Morocco',
      'flag': 'assets/img/africaCountries/Morocco.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Mozambique',
      'flag': 'assets/img/africaCountries/Mozambique.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Namibia',
      'flag': 'assets/img/africaCountries/Namibia.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Niger',
      'flag': 'assets/img/africaCountries/Niger.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Nigeria',
      'flag': 'assets/img/africaCountries/Nigeria.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Rwanda',
      'flag': 'assets/img/africaCountries/Rwanda.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Senegal',
      'flag': 'assets/img/africaCountries/Senegal.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Seychelles',
      'flag': 'assets/img/africaCountries/Seychelles.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Sierra Leone',
      'flag': 'assets/img/africaCountries/Sierra Leone.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Somalia',
      'flag': 'assets/img/africaCountries/Somalia.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'South Africa',
      'flag': 'assets/img/africaCountries/South Africa.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'South Sudan',
      'flag': 'assets/img/africaCountries/South sudan.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Sudan',
      'flag': 'assets/img/africaCountries/Sudan.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Tanzania',
      'flag': 'assets/img/africaCountries/Tanzania.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Togo',
      'flag': 'assets/img/africaCountries/Togo.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Tunisia',
      'flag': 'assets/img/africaCountries/Tunisia.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Uganda',
      'flag': 'assets/img/africaCountries/Uganda.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Zambia',
      'flag': 'assets/img/africaCountries/Zambia.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Zimbabwe',
      'flag': 'assets/img/africaCountries/Zimbabwe.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Equatorial Guinea',
      'flag': 'assets/img/africaCountries/Equatorial Guinea.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Central African Republic',
      'flag': 'assets/img/africaCountries/Central African Republic.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Democratic Republic of congo',
      'flag': 'assets/img/africaCountries/Democratic Republic of congo.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Sao Tome and principe',
      'flag': 'assets/img/africaCountries/Sao Tome and principe.png',
      'targetPage': egyptCountry()
    },
  ];
}
