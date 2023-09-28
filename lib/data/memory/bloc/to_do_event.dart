import 'package:fast_app_base/data/memory/vo_to_do.dart';

abstract class ToDoEvent {}

class ToDoAddEvent extends ToDoEvent {}

class ToDoStatusUpdateEvent extends ToDoEvent {
  final ToDo updatedToDo;

  ToDoStatusUpdateEvent(this.updatedToDo);
}

class ToDoContentUpdateEvent extends ToDoEvent {
  final ToDo updatedToDo;

  ToDoContentUpdateEvent(this.updatedToDo);
}

class ToDoRemoveEvent extends ToDoEvent {
  final ToDo removedToDo;

  ToDoRemoveEvent(this.removedToDo);
}
