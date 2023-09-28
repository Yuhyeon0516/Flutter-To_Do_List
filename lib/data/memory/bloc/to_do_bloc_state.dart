import 'package:fast_app_base/data/memory/bloc/bloc_status.dart';
import 'package:fast_app_base/data/memory/vo_to_do.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'to_do_bloc_state.freezed.dart';

@freezed
class ToDoBlocState with _$ToDoBlocState {
  const factory ToDoBlocState(
    final List<ToDo> toDoList,
    final BlocStatus status,
  ) = _ToDoBlocState;
}
