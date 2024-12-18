import 'package:flutter/material.dart';
import 'homePage.dart';




class LoadingPage2 extends StatefulWidget {

  const LoadingPage2({super.key});

  @override
  _LoadingPage2State createState() => _LoadingPage2State();
}

class _LoadingPage2State extends State<LoadingPage2> {
  @override
  void initState() {
    super.initState();
    // الانتقال إلى الصفحة التالية بعد 7 ثوانٍ
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //Heading "ATLAS"
            const Text(
              'ATLAS',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 15,
              ),
            ),
            SizedBox(height: 30),

            //Introduction-For-APP
            const Text(
              'Every Map Tells a Story of the World',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 5,
              ),
            ),
            SizedBox(height: 30),

            //earth-gif
            Image.asset('assets/img/earthGIF.gif',
            width: 700,
            height: 700,
            ),
          ],
        ),
      ),
    );
  }
}
