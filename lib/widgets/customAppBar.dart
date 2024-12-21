import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? imagePath;

  const customAppBar(this.title, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        // خلفية سوداء
        elevation: 0,
        // بدون ظل
        leading: Image.asset(
          imagePath!,
          width: 100,
          height: 100,
        ),
        leadingWidth: 80,
        title: Text(
          title!,
          style: const TextStyle(
            color: Colors.white, // لون النص أبيض
            fontSize: 35, // حجم الخط
            fontWeight: FontWeight.bold, // خط عريض
          ),
        ),
        centerTitle: false,
        // النص على اليسار
        actions: [
          IconButton(
            icon: Image.asset('assets/img/backButton.png'),
            iconSize: 10,
            onPressed: () {
              Navigator.pop(context); // العودة للصفحة السابقة
            },
          ),
        ],
      ),
    );
  }

  @override
  // Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  Size get preferredSize => const Size.fromHeight(80);
}
