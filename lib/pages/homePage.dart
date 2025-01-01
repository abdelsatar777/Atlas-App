// homePage.dart
import 'package:app/pages/responsiveContinentsGrid.dart';
import 'package:app/pages/southAmerica/southAmericaDetails.dart';
import 'package:flutter/material.dart';
import '../widgets/customCard.dart';
import 'africa/africaDetails.dart';
import 'antarctica/antarcticaDetails.dart';
import 'asia/asiaDetails.dart';
import 'australia/australiaDetails.dart';
import 'europe/europeDetails.dart';
import 'northAmerica/northAmericaDetails.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Choose a Continent',
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 10,
            ),
            textScaler: MediaQuery.of(context).textScaler,
          ),
          const SizedBox(height: 50),
          Expanded(
            child: ResponsiveContinentsGrid(
              itemCount: continents.length,
              itemBuilder: (context, index) {
                final continent = continents[index];
                return customCard(
                  continent['title'],
                  continent['imagePath'],
                  continent['targetPage'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> continents = [
  {
    'title': 'Africa',
    'imagePath': 'assets/img/countries/africaCountries.png',
    'targetPage': africaDetails(),
  },
  {
    'title': 'Asia',
    'imagePath': 'assets/img/countries/asiaCountries.png',
    'targetPage': asiaDetails(),
  },
  {
    'title': 'Australia',
    'imagePath': 'assets/img/countries/australiaCountries.png',
    'targetPage': australiaDetails(),
  },
  {
    'title': 'Europe',
    'imagePath': 'assets/img/countries/europeCountries.png',
    'targetPage': europeDetails(),
  },
  {
    'title': 'Antarctica',
    'imagePath': 'assets/img/countries/antarcticaCountries.png',
    'targetPage': antarcticaDetails(),
  },
  {
    'title': 'North America',
    'imagePath': 'assets/img/countries/northAmericaCountries.png',
    'targetPage': northAmericaDetails(),
  },
  {
    'title': 'South America',
    'imagePath': 'assets/img/countries/southAmericaCountries.png',
    'targetPage': southAmericaDetails(),
  },
];
