// customCard.dart
import 'package:flutter/material.dart';

class customCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Widget targetPage;

  const customCard(this.title, this.imagePath, this.targetPage);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: screenWidth * 0.20,
            height: screenHeight * 0.20,
          ),
          const SizedBox(height: 7),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => targetPage,
                ),
              );
            },
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              side: const BorderSide(width: 5, color: Colors.white),
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
              textScaler: MediaQuery.of(context).textScaler,
            ),
          )
        ],
      ),
    );
  }
}
