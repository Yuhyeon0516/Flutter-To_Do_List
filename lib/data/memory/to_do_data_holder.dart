import 'package:fast_app_base/data/memory/to_do_status.dart';
import 'package:fast_app_base/data/memory/vo_to_do.dart';
import 'package:fast_app_base/screen/dialog/d_confirm.dart';
import 'package:fast_app_base/screen/main/write/d_write_to_do.dart';
import 'package:get/get.dart';

class ToDoDataHolder extends GetxController {
  final RxList<ToDo> toDoList = <ToDo>[].obs;

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
    toDoList.refresh();
  }

  void addToDo() async {
    final result = await WriteToDoDialog().show();

    if (result != null) {
      toDoList.add(
        ToDo(
            id: DateTime.now().millisecondsSinceEpoch,
            title: result.text,
            dueDate: result.dateTime),
      );
    }
  }

  void editToDo(ToDo toDo) async {
    final result = await WriteToDoDialog(toDoForEdit: toDo).show();

    if (result != null) {
      toDo.title = result.text;
      toDo.dueDate = result.dateTime;
      toDoList.refresh();
    }
  }

  void removeToDo(ToDo toDo) {
    toDoList.remove(toDo);
    toDoList.refresh();
  }
}

mixin class ToDoDataProvider {
  late final ToDoDataHolder toDoData = Get.find();
}
