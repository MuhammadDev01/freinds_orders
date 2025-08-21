import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.data,
    this.fontSize,
    this.fontWeight,
    this.color,
  });
  final String data;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textDirection: TextDirection.rtl,
      style: TextStyle(
        fontSize: fontSize ?? 22,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color ?? Colors.black,
      ),
    );
  }
}
