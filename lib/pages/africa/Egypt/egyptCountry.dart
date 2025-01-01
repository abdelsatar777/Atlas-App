import 'package:app/pages/africa/Egypt/responsiveEgyptCountryGrid.dart';
import 'package:app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class egyptCountry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:
          customAppBar('Egypt Country', 'assets/img/africaCountries/Egypt.png'),
      body: responsiveEgyptCountryGrid(),
    );
  }
}
