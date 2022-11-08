import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EstimateResult extends StatefulWidget {
  const EstimateResult({super.key});

  @override
  State<EstimateResult> createState() => _EstimateResultState();
}

class _EstimateResultState extends State<EstimateResult> {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FixedColumnWidth(64)
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          children: [
            Container(
              height: 32,
              color: Colors.green,
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.top,
              child: Container(
                height: 32,
                width: 32,
                color: Colors.red,
              ),
            ),
            Container(
              height: 64,
              color: Colors.blue,
            ),
          ],
        ),
        TableRow(
            decoration: const BoxDecoration(color: Colors.grey),
            children: [
              Container(
                height: 64,
                width: 128,
                color: Colors.purple,
              ),
              Container(
                height: 32,
                color: Colors.yellow,
              ),
              Center(
                child: Container(
                  height: 32,
                  width: 32,
                  color: Colors.orange,
                ),
              )
            ])
      ],
    );
  }
}
