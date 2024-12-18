import 'package:flutter/material.dart';
import 'button.dart';

class ContinentItem extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onTap;

  const ContinentItem({
    required this.imagePath,
    required this.label,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // صورة القارة
        Image.asset(
          imagePath,
          height: 100,
          width: 100,
        ),
        SizedBox(height: 10),
        // الزرار
        ContinentButton(label: label, onTap: onTap),
      ],
    );
  }
}
