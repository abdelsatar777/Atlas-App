// استيراد المكتبات المطلوبة
import 'package:flutter/material.dart';

import '../../widgets/customAppBar.dart';

class africanCountries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      appBar: customAppBar(
          'African Countries', 'assets/img/continents/africaContinent.png'),
    );
  }
}
