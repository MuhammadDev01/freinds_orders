import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freinds_orders/core/components/custom_data_column.dart';
import 'package:freinds_orders/features/teachers/cubit/teacher_cubit.dart';
import 'package:freinds_orders/features/teachers/ui/widgets/custom_app_bar.dart';

class TeachersScreen extends StatelessWidget {
  const TeachersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeacherCubit(),
      child: BlocBuilder<TeacherCubit, TeacherStates>(
        builder: (context, state) {
          final cubit = BlocProvider.of<TeacherCubit>(context);
          return Scaffold(
            appBar: CustomAppBar(),

            body: SingleChildScrollView(
              child: DataTable(
                headingRowColor: WidgetStateProperty.all(
                  Colors.blueGrey.shade100,
                ),
                border: TableBorder.all(color: Colors.grey.shade300),
                columns: customDataColumns(),
                rows: cubit.data
                    .map(
                      (item) => DataRow(
                        cells: [
                          DataCell(
                            Center(
                              child: IconButton(
                                onPressed: cubit.toggleReceiveOrder,
                                icon: Icon(
                                  cubit.isRecevied
                                      ? Icons.check_box
                                      : Icons.check_box_outline_blank,
                                ),
                              ),
                            ),
                          ),
                          DataCell(Text(item.notes)),
                          DataCell(Text(item.deliveryDate)),
                          DataCell(Text(item.copies)),
                          DataCell(Text(item.bookName)),
                          DataCell(Text(item.teacherName)),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
