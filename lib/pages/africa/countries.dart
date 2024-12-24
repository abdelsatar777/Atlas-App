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
      'flag': 'assets/img/africaCountries/egyptFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Algeria',
      'flag': 'assets/img/africaCountries/algeriaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Angola',
      'flag': 'assets/img/africaCountries/angolaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Benin',
      'flag': 'assets/img/africaCountries/beninFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Botswana',
      'flag': 'assets/img/africaCountries/botswanaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Egypt',
      'flag': 'assets/img/africaCountries/egyptFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Algeria',
      'flag': 'assets/img/africaCountries/algeriaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Angola',
      'flag': 'assets/img/africaCountries/angolaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Benin',
      'flag': 'assets/img/africaCountries/beninFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Botswana',
      'flag': 'assets/img/africaCountries/botswanaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Egypt',
      'flag': 'assets/img/africaCountries/egyptFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Algeria',
      'flag': 'assets/img/africaCountries/algeriaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Angola',
      'flag': 'assets/img/africaCountries/angolaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Benin',
      'flag': 'assets/img/africaCountries/beninFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Botswana',
      'flag': 'assets/img/africaCountries/botswanaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Egypt',
      'flag': 'assets/img/africaCountries/egyptFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Algeria',
      'flag': 'assets/img/africaCountries/algeriaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Angola',
      'flag': 'assets/img/africaCountries/angolaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Benin',
      'flag': 'assets/img/africaCountries/beninFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Botswana',
      'flag': 'assets/img/africaCountries/botswanaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Egypt',
      'flag': 'assets/img/africaCountries/egyptFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Algeria',
      'flag': 'assets/img/africaCountries/algeriaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Angola',
      'flag': 'assets/img/africaCountries/angolaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Benin',
      'flag': 'assets/img/africaCountries/beninFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Botswana',
      'flag': 'assets/img/africaCountries/botswanaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Egypt',
      'flag': 'assets/img/africaCountries/egyptFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Algeria',
      'flag': 'assets/img/africaCountries/algeriaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Angola',
      'flag': 'assets/img/africaCountries/angolaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Benin',
      'flag': 'assets/img/africaCountries/beninFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Botswana',
      'flag': 'assets/img/africaCountries/botswanaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Egypt',
      'flag': 'assets/img/africaCountries/egyptFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Algeria',
      'flag': 'assets/img/africaCountries/algeriaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Angola',
      'flag': 'assets/img/africaCountries/angolaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Benin',
      'flag': 'assets/img/africaCountries/beninFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Botswana',
      'flag': 'assets/img/africaCountries/botswanaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Egypt',
      'flag': 'assets/img/africaCountries/egyptFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Algeria',
      'flag': 'assets/img/africaCountries/algeriaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Angola',
      'flag': 'assets/img/africaCountries/angolaFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Benin',
      'flag': 'assets/img/africaCountries/beninFlag.png',
      'targetPage': egyptCountry()
    },
    {
      'title': 'Botswana',
      'flag': 'assets/img/africaCountries/botswanaFlag.png',
      'targetPage': egyptCountry()
    },
  ];
}
