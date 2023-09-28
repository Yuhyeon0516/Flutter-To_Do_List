import 'package:fast_app_base/data/memory/vo_to_do.dart';
import 'package:flutter/material.dart';

class ToDoDataNotifier extends ValueNotifier<List<ToDo>> {
  ToDoDataNotifier() : super([]);

  void addToDo(ToDo toDo) {
    value.add(toDo);
    notifyListeners();
  }

  void notify() {
    notifyListeners();
  }
}
