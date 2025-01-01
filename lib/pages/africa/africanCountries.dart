// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

import '../../widgets/customAppBar.dart';
import 'responsiveCountriesGrid.dart';

// صفحة الدول الإفريقية
class africanCountries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const customAppBar(
          'African Countries', 'assets/img/continents/africaContinent.png'),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: responsiveCountriesGrid(),
      ),
    );
  }
}
