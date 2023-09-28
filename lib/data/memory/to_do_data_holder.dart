import 'package:fast_app_base/data/memory/to_do_data_notifier.dart';
import 'package:fast_app_base/data/memory/to_do_status.dart';
import 'package:fast_app_base/data/memory/vo_to_do.dart';
import 'package:fast_app_base/screen/dialog/d_confirm.dart';
import 'package:fast_app_base/screen/main/write/d_write_to_do.dart';
import 'package:flutter/material.dart';

class ToDoDataHolder extends InheritedWidget {
  final ToDoDataNotifier notifier;

  const ToDoDataHolder({
    super.key,
    required super.child,
    required this.notifier,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static ToDoDataHolder of(BuildContext context) {
    ToDoDataHolder inherited =
        (context.dependOnInheritedWidgetOfExactType<ToDoDataHolder>())!;

    return inherited;
  }

  void changeToDoStatus(ToDo toDo) async {
    switch (toDo.status) {
      case ToDoStatus.incomplete:
        toDo.status = ToDoStatus.ongoing;
      case ToDoStatus.ongoing:
        toDo.status = ToDoStatus.complete;
      case ToDoStatus.complete:
        final result = await ConfirmDialog(
          "정말로 처음 상태로 변경하시겠어요?",
          buttonText: "확인",
        ).show();
        result?.runIfSuccess((data) {
          toDo.status = ToDoStatus.incomplete;
        });
      default:
        break;
    }

    notifier.notify();
  }

  void addToDo() async {
    final result = await WriteToDoDialog().show();

    if (result != null) {
      notifier.addToDo(
        ToDo(
            id: DateTime.now().millisecondsSinceEpoch,
            title: result.text,
            dueDate: result.dateTime),
      );
    }
  }
}
