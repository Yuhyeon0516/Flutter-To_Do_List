import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/todo/w_to_do_item.dart';
import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.toDoHolder.notifier,
      builder: (context, toDoList, child) {
        return toDoList.isEmpty
            ? '할 일을 작성해보세요.'.text.size(30).bold.makeCentered()
            : Column(
                children: toDoList.map((e) => ToDoItem(e)).toList(),
              );
      },
    );
  }
}
