import 'package:flutter/material.dart';

import '../widgets/buttonContinents.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Choose a Continent'),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        children: [
          ContinentItem(
            imagePath: 'assets/img/continents/africaCountryMap.png', // صورة إفريقيا
            label: 'Africa',
            onTap: () {
              print('Africa tapped');
            },
          ),
          ContinentItem(
            imagePath: 'assets/img/continents/antarcticaMapCountry.png', // صورة أنتاركتيكا
            label: 'Antarctica',
            onTap: () {
              print('Antarctica tapped');
            },
          ),
          ContinentItem(
            imagePath: 'assets/img/continents/asiaMapCountry.png', // صورة آسيا
            label: 'Asia',
            onTap: () {
              print('Asia tapped');
            },
          ),
          ContinentItem(
            imagePath: 'assets/img/continents/australiaMapCountry.png', // صورة أستراليا
            label: 'Australia',
            onTap: () {
              print('Australia tapped');
            },
          ),
          ContinentItem(
            imagePath: 'assets/img/continents/europeMapCountry.png', // صورة أوروبا
            label: 'Europe',
            onTap: () {
              print('Europe tapped');
            },
          ),
          ContinentItem(
            imagePath: 'assets/img/continents/northAmericaMapCountry.png', // صورة أمريكا الشمالية
            label: 'North America',
            onTap: () {
              print('North America tapped');
            },
          ),
          ContinentItem(
            imagePath: 'assets/img/continents/southAmericaMapCountry.png', // صورة أمريكا الجنوبية
            label: 'South America',
            onTap: () {
              print('South America tapped');
            },
          ),
        ],
      ),
    );
  }
}
