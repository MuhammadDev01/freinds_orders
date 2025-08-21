import 'package:flutter/material.dart';
import 'package:freinds_orders/core/constants/constants.dart';
import 'package:freinds_orders/features/teachers/ui/screens/teachers_screen.dart';

class FreindsOrdersApp extends StatelessWidget {
  const FreindsOrdersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TeachersScreen(),
      theme: ThemeData(
        fontFamily: fontTajawal,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
