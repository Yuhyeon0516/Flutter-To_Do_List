import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/bloc/to_do_bloc_state.dart';
import 'package:fast_app_base/data/memory/to_do_data_bloc.dart';
import 'package:fast_app_base/screen/main/tab/todo/w_to_do_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ToDoBloc, ToDoBlocState>(
      builder: (context, state) {
        return state.toDoList.isEmpty
            ? '할 일을 작성해보세요.'.text.size(30).bold.makeCentered()
            : Column(
                children: state.toDoList.map((e) => ToDoItem(e)).toList(),
              );
      },
    );
  }
}
