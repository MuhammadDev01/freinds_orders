import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, this.onPressed, required this.iconImage});
  final VoidCallback? onPressed;
  final String iconImage;
  @override
  Widget build(BuildContext context) {
    return IconButton(icon: Image.asset(iconImage), onPressed: onPressed);
  }
}
