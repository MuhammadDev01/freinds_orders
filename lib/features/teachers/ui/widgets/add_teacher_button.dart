// import 'package:flutter/material.dart';
// import 'package:freinds_orders/core/constants/constants.dart';
// import 'package:freinds_orders/features/teachers/models/teacher_model.dart';

// class AddTeacherButton extends StatefulWidget {
//   const AddTeacherButton({super.key});

//   @override
//   State<AddTeacherButton> createState() => _AddTeacherButtonState();
// }

// class _AddTeacherButtonState extends State<AddTeacherButton> {
//   // Controllers for input



//   Future<void> pickDate() async {
//     DateTime? date = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2020),
//       lastDate: DateTime(2030),
//     );
//     if (date != null) {
//       setState(() {
//         selectedDate = date;
//       });
//     }
//   }

//   void addRow() {
//     showBottomSheet(
//       context: context,
//       builder: (context) => Container(height: 50, width: 50, color: Colors.red),
//     );

//     if (teacherController.text.isEmpty ||
//         bookController.text.isEmpty ||
//         copiesController.text.isEmpty ||
//         selectedDate == null) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("Please fill all required fields")),
//       );
//       return;
//     }

//     setState(() {
//       data.add(
//         TeacherBook(
//           teacherName: teacherController.text,
//           bookName: bookController.text,
//           copies: int.tryParse(copiesController.text) ?? 0,
//           deliveryDate:
//               "${selectedDate!.year}-${selectedDate!.month}-${selectedDate!.day}",
//           notes: notesController.text,
//           delivered: delivered,
//         ),
//       );
//       // Clear fields after adding
//       teacherController.clear();
//       bookController.clear();
//       copiesController.clear();
//       notesController.clear();
//       selectedDate = null;
//       delivered = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12),
//       child: Column(
//         children: [
        
//         ],
//       ),
//     );
//   }
// }
