import 'package:flutter/material.dart';
import 'package:freinds_orders/core/components/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.textbutton,
    this.colorButton,
    this.colorText,
  });
  final VoidCallback onPressed;
  final String textbutton;
  final Color? colorButton;
  final Color? colorText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorButton ?? Colors.teal,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: onPressed,

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomText(
          data: textbutton,
          fontWeight: FontWeight.w900,
          color: colorText ?? Colors.white,
        ),
      ),
    );
  }
}
