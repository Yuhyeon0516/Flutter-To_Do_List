import 'package:fast_app_base/data/memory/bloc/bloc_status.dart';
import 'package:fast_app_base/data/memory/bloc/to_do_bloc_state.dart';
import 'package:fast_app_base/data/memory/to_do_status.dart';
import 'package:fast_app_base/data/memory/vo_to_do.dart';
import 'package:fast_app_base/screen/dialog/d_confirm.dart';
import 'package:fast_app_base/screen/main/write/d_write_to_do.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDoCubit extends Cubit<ToDoBlocState> {
  ToDoCubit() : super(const ToDoBlocState(<ToDo>[], BlocStatus.initial));

  void changeToDoStatus(ToDo toDo) async {
    final copiedOldToDoList = List.of(state.toDoList);
    final toDoIndex =
        copiedOldToDoList.indexWhere((element) => element.id == toDo.id);

    ToDoStatus status = toDo.status;

    switch (toDo.status) {
      case ToDoStatus.incomplete:
        status = ToDoStatus.ongoing;
      case ToDoStatus.ongoing:
        status = ToDoStatus.complete;
      case ToDoStatus.complete:
        final result = await ConfirmDialog(
          "정말로 처음 상태로 변경하시겠어요?",
          buttonText: "확인",
        ).show();
        result?.runIfSuccess((data) {
          status = ToDoStatus.incomplete;
        });
      default:
        break;
    }

    copiedOldToDoList[toDoIndex] = toDo.copyWith(status: status);
    emitNewToDo(copiedOldToDoList);
  }

  void addToDo() async {
    final result = await WriteToDoDialog().show();

    if (result != null) {
      final copiedOldToDoList = List.of(state.toDoList);

      copiedOldToDoList.add(
        ToDo(
            id: DateTime.now().millisecondsSinceEpoch,
            title: result.text,
            dueDate: result.dateTime,
            createdTime: DateTime.now(),
            status: ToDoStatus.incomplete),
      );

      emitNewToDo(copiedOldToDoList);
    }
  }

  void editToDo(ToDo toDo) async {
    final result = await WriteToDoDialog(toDoForEdit: toDo).show();

    if (result != null) {
      final copiedOldToDoList = List.of(state.toDoList);
      copiedOldToDoList[copiedOldToDoList.indexOf(toDo)] = toDo.copyWith(
        title: result.text,
        dueDate: result.dateTime,
        modifyTime: DateTime.now(),
      );
      emitNewToDo(copiedOldToDoList);
    }
  }

  void removeToDo(ToDo toDo) {
    final copiedOldToDoList = List.of(state.toDoList);
    copiedOldToDoList.removeWhere((element) => element.id == toDo.id);

    emitNewToDo(copiedOldToDoList);
  }

  void emitNewToDo(List<ToDo> copiedOldToDoList) =>
      emit(state.copyWith(toDoList: copiedOldToDoList));
}
