import 'package:flutter/material.dart';
import 'package:freinds_orders/core/constants/constants.dart';

List<DataColumn> customDataColumns() {
  return columnNames
      .map(
        (e) => DataColumn(
          label: Expanded(
            child: Text(
              e,
              style: TextStyle(fontSize: 24),
              textDirection: TextDirection.rtl,
            ),
          ),
          columnWidth: FlexColumnWidth(),
        ),
      )
      .toList();
}
