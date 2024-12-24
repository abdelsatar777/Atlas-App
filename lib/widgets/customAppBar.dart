import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? imagePath;

  const customAppBar(this.title, this.imagePath);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
          width: screenWidth * 0.5,
          height: screenHeight * 0.5,
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
            icon: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white, // إضافة حدود رمادية للدائرة
                  width: 3, // سمك الحدود
                ),
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white, // تغيير لون الأيقونة إلى أسود للتمايز
                size: 35,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  @override
  // Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  Size get preferredSize => const Size.fromHeight(80);
}
