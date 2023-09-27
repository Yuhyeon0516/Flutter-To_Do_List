import 'package:fast_app_base/data/memory/to_do_status.dart';

class ToDo {
  ToDo({
    required this.id,
    required this.title,
    required this.dueDate,
    this.status = ToDoStatus.incomplete,
  }) : createdTime = DateTime.now();

  int id;
  String title;
  final DateTime createdTime;
  DateTime? modifyTime;
  DateTime dueDate;
  ToDoStatus status;
}
