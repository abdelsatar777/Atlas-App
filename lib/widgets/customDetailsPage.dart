// customDetailsPage.dart
import 'package:flutter/material.dart';

class customDetailsPage extends StatelessWidget {
  final String? heading;
  final String? paragraph;
  final String? imgPath;

  const customDetailsPage(this.heading, this.paragraph, this.imgPath);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              heading!,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 15,
              ),
              textScaler: MediaQuery.of(context).textScaler,
            ),
            const SizedBox(height: 30),
            Text(
              paragraph!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textScaler: MediaQuery.of(context).textScaler,
            ),
            const SizedBox(height: 30),
            Image.asset(
              imgPath!,
              width: screenWidth * 0.8,
              height: screenHeight * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
