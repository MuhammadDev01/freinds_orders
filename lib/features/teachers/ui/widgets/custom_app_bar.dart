import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freinds_orders/core/components/cancel_button.dart';
import 'package:freinds_orders/core/components/custom_button.dart';
import 'package:freinds_orders/core/components/custom_icon_button.dart';
import 'package:freinds_orders/core/components/custom_text.dart';
import 'package:freinds_orders/core/components/custom_text_field.dart';
import 'package:freinds_orders/core/constants/assets.dart';
import 'package:freinds_orders/core/utils/colors.dart';
import 'package:freinds_orders/features/teachers/cubit/teacher_cubit.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeacherCubit, TeacherStates>(
      builder: (context, state) {
        final cubit = BlocProvider.of<TeacherCubit>(context);
        return AppBar(
          leadingWidth: 300,
          leading: Row(
            spacing: 10,
            children: [
              CustomIconButton(
                iconImage: Assets.imagesAdd,
                onPressed: () => addTeacher(context, cubit),
              ),
              CustomIconButton(iconImage: Assets.imagesEdit, onPressed: () {}),
              CustomIconButton(
                iconImage: Assets.imagesDelete,
                onPressed: () {},
              ),
              CustomIconButton(
                iconImage: Assets.imagesRefresh,
                onPressed: () {},
              ),
            ],
          ),
          title: Text(
            'جدول متابعة كتب المدرسين',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 28,
            ),
          ),
          centerTitle: true,
          backgroundColor: defaultColor,
        );
      },
    );
  }

  Future<dynamic> addTeacher(BuildContext context, TeacherCubit cubit) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          constraints: BoxConstraints(maxHeight: 750),
          backgroundColor: defaultColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                spacing: 25,
                children: [
                  Align(alignment: Alignment.topRight, child: CancelButton()),
                  CustomText(data: 'إضـافـة كـتـاب مـدرس', color: Colors.white),
                  CustomTextField(
                    controller: cubit.teacherController,
                    labelText: "اسم المدرس",
                  ),
                  CustomTextField(
                    controller: cubit.bookController,
                    labelText: "اسم الكتاب",
                  ),
                  CustomTextField(
                    controller: cubit.copiesController,
                    labelText: "عدد النسخ",
                  ),
                  CustomTextField(
                    controller: cubit.dateController,
                    labelText: "موعد التسليم",
                  ),
                  CustomTextField(
                    controller: cubit.notesController,
                    labelText: "ملاحظات",
                  ),
                  CustomButton(
                    onPressed: () {
                      cubit.addTeacher();
                      Navigator.of(context).pop();
                    },
                    textbutton: 'حـفـظ',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
