import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/vo_to_do.dart';
import 'package:flutter/material.dart';

class ToDoStatusWidget extends StatelessWidget {
  final ToDo toDo;
  const ToDoStatusWidget(this.toDo, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Checkbox(
        value: true,
        onChanged: null,
        fillColor: MaterialStateProperty.all(context.appColors.checkBoxColor),
      ),
    );
  }
}
