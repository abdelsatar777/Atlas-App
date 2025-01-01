import 'package:app/pages/LoadingPage.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AtlasApp());
  doWhenWindowReady(() {
    appWindow.title = "Atlas App"; // عنوان النافذة
    appWindow.alignment = Alignment.center; // مركز النافذة على الشاشة
    appWindow.show(); // عرض النافذة
  });
}

class AtlasApp extends StatelessWidget {
  const AtlasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Arial',
      ),
      home: const LoadingPage(),
    );
  }
}
