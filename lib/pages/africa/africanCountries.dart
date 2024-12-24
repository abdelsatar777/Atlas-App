// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

import '../../widgets/customAppBar.dart';
import 'countries.dart';

class africanCountries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const customAppBar(
            'African Countries', 'assets/img/continents/africaContinent.png'),
        body: countries(),
      ),
    );
  }
}
