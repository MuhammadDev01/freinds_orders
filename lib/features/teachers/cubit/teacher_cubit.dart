import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freinds_orders/features/teachers/models/teacher_model.dart';

part 'teacher_state.dart';

class TeacherCubit extends Cubit<TeacherStates> {
  TeacherCubit() : super(TeacherInitialState());
  final TextEditingController teacherController = TextEditingController();
  final TextEditingController bookController = TextEditingController();
  final TextEditingController copiesController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  List<TeacherDetails> data = [];
  void addTeacher() {
    emit(TeacherAddLoadingState());
    data.add(
      TeacherDetails(
        teacherName: teacherController.text,
        bookName: bookController.text,
        copies: copiesController.text,
        deliveryDate: dateController.text,
        notes: notesController.text,
        delivered: true,
      ),
    );
    emit(TeacherAddSuccessState());
  }
}
