import 'package:flutter/material.dart';

class AddTeacherScreen extends StatefulWidget {
  const AddTeacherScreen({super.key});
  @override
  State<AddTeacherScreen> createState() => _AddTeacherScreenState();
}

class _AddTeacherScreenState extends State<AddTeacherScreen> {
  final teacherController = TextEditingController();
  final bookController = TextEditingController();
  final copiesController = TextEditingController();
  final notesController = TextEditingController();
  DateTime? selectedDate;
  bool delivered = false;

  Future<void> pickDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: teacherController,
            decoration: const InputDecoration(labelText: "اسم المدرس"),
          ),
          TextField(
            controller: bookController,
            decoration: const InputDecoration(labelText: "اسم الكتاب"),
          ),
          TextField(
            controller: copiesController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "عدد النسخ"),
          ),
          TextField(
            controller: notesController,
            decoration: const InputDecoration(labelText: "ملاحظات"),
          ),

          // Row(
          //   children: [
          //     Text(
          //       selectedDate == null
          //           ? "No Date Chosen"
          //           : selectedDate.toString().split(" ")[0],
          //     ),
          //     TextButton(onPressed: pickDate, child: const Text("Pick Date")),
          //   ],
          // ),
          ElevatedButton(onPressed: () {}, child: const Text("Add Row")),
        ],
      ),
    );
  }
}
