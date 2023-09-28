import 'package:fast_app_base/data/memory/to_do_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_to_do.freezed.dart';

@freezed
class ToDo with _$ToDo {
  const factory ToDo({
    required int id,
    required String title,
    required DateTime dueDate,
    DateTime? modifyTime,
    required DateTime createdTime,
    required ToDoStatus status,
  }) = _ToDo;
}
