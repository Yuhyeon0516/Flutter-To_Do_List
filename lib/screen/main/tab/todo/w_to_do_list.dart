import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/to_do_data_holder.dart';
import 'package:fast_app_base/screen/main/tab/todo/w_to_do_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToDoList extends StatelessWidget with ToDoDataProvider {
  ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => toDoData.toDoList.isEmpty
          ? '할 일을 작성해보세요.'.text.size(30).bold.makeCentered()
          : Column(
              children: toDoData.toDoList.map((e) => ToDoItem(e)).toList(),
            ),
    );
  }
}
