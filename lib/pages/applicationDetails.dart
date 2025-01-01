import 'package:flutter/material.dart';
import '../widgets/customDetailsPage.dart';
import 'homePage.dart';

class applicationDetails extends StatefulWidget {
  const applicationDetails({super.key});

  @override
  _applicationDetailsState createState() => _applicationDetailsState();
}

class _applicationDetailsState extends State<applicationDetails> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: customDetailsPage('ATLAS', 'Every Map Tells a Story of the World',
          'assets/img/earthGIF.gif'),
    );
  }
}
