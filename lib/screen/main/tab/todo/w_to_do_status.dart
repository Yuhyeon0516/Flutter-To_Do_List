import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/bloc/to_do_event.dart';
import 'package:fast_app_base/data/memory/to_do_status.dart';
import 'package:fast_app_base/data/memory/vo_to_do.dart';
import 'package:fast_app_base/screen/main/tab/todo/w_fire.dart';
import 'package:flutter/material.dart';

class ToDoStatusWidget extends StatelessWidget {
  final ToDo toDo;
  const ToDoStatusWidget(this.toDo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: () {
        context.readToDoBloc.add(ToDoStatusUpdateEvent(toDo));
      },
      child: SizedBox(
        width: 50,
        height: 50,
        child: switch (toDo.status) {
          ToDoStatus.complete => Checkbox(
              value: true,
              onChanged: null,
              fillColor:
                  MaterialStateProperty.all(context.appColors.checkBoxColor),
            ),
          ToDoStatus.incomplete => const Checkbox(
              value: false,
              onChanged: null,
            ),
          ToDoStatus.ongoing => const Fire(),
        },
      ),
    );
  }
}
