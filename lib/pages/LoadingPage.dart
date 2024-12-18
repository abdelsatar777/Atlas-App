import 'package:flutter/material.dart';
import 'LoadingPage2.dart';

class LoadingPage extends StatefulWidget {

  const LoadingPage({super.key});

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    // الانتقال إلى الصفحة التالية بعد 3 ثوانٍ
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoadingPage2()),
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

            //Logo App
            Image.asset('assets/img/logo.png'),

            // دائرة التحميل
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF7AC6EA)),
              strokeWidth: 6, // حجم الخط
            ),
          ],
        ),
      ),
    );
  }
}
