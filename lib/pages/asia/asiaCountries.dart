// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

import '../../widgets/customAppBar.dart';
import 'responsiveCountriesGrid.dart';

// صفحة الدول الإفريقية
class asiaCountries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const customAppBar(
          'Asia Countries', 'assets/img/continents/asiaContinent.png'),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: responsiveCountriesGrid(),
      ),
    );
  }
}
