import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/data/memory/vo_to_do.dart';
import 'package:fast_app_base/screen/main/tab/todo/w_to_do_status.dart';
import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  final ToDo toDo;

  const ToDoItem(this.toDo, {super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      margin: const EdgeInsets.only(bottom: 15),
      color: context.appColors.itemBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          toDo.dueDate.relativeDays.text.make(),
          Row(
            children: [
              ToDoStatusWidget(toDo),
              Expanded(child: toDo.title.text.size(20).medium.make()),
              IconButton(
                onPressed: () async {
                  context.toDoHolder.editToDo(toDo);
                },
                icon: const Icon(EvaIcons.editOutline),
              )
            ],
          ),
        ],
      ).pOnly(top: 15, right: 15, left: 5, bottom: 10),
    );
  }
}
