// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_do_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ToDoBlocState {
  List<ToDo> get toDoList => throw _privateConstructorUsedError;
  BlocStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToDoBlocStateCopyWith<ToDoBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoBlocStateCopyWith<$Res> {
  factory $ToDoBlocStateCopyWith(
          ToDoBlocState value, $Res Function(ToDoBlocState) then) =
      _$ToDoBlocStateCopyWithImpl<$Res, ToDoBlocState>;
  @useResult
  $Res call({List<ToDo> toDoList, BlocStatus status});
}

/// @nodoc
class _$ToDoBlocStateCopyWithImpl<$Res, $Val extends ToDoBlocState>
    implements $ToDoBlocStateCopyWith<$Res> {
  _$ToDoBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoList = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      toDoList: null == toDoList
          ? _value.toDoList
          : toDoList // ignore: cast_nullable_to_non_nullable
              as List<ToDo>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToDoBlocStateCopyWith<$Res>
    implements $ToDoBlocStateCopyWith<$Res> {
  factory _$$_ToDoBlocStateCopyWith(
          _$_ToDoBlocState value, $Res Function(_$_ToDoBlocState) then) =
      __$$_ToDoBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ToDo> toDoList, BlocStatus status});
}

/// @nodoc
class __$$_ToDoBlocStateCopyWithImpl<$Res>
    extends _$ToDoBlocStateCopyWithImpl<$Res, _$_ToDoBlocState>
    implements _$$_ToDoBlocStateCopyWith<$Res> {
  __$$_ToDoBlocStateCopyWithImpl(
      _$_ToDoBlocState _value, $Res Function(_$_ToDoBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoList = null,
    Object? status = null,
  }) {
    return _then(_$_ToDoBlocState(
      null == toDoList
          ? _value._toDoList
          : toDoList // ignore: cast_nullable_to_non_nullable
              as List<ToDo>,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
    ));
  }
}

/// @nodoc

class _$_ToDoBlocState implements _ToDoBlocState {
  const _$_ToDoBlocState(final List<ToDo> toDoList, this.status)
      : _toDoList = toDoList;

  final List<ToDo> _toDoList;
  @override
  List<ToDo> get toDoList {
    if (_toDoList is EqualUnmodifiableListView) return _toDoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toDoList);
  }

  @override
  final BlocStatus status;

  @override
  String toString() {
    return 'ToDoBlocState(toDoList: $toDoList, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToDoBlocState &&
            const DeepCollectionEquality().equals(other._toDoList, _toDoList) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_toDoList), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToDoBlocStateCopyWith<_$_ToDoBlocState> get copyWith =>
      __$$_ToDoBlocStateCopyWithImpl<_$_ToDoBlocState>(this, _$identity);
}

abstract class _ToDoBlocState implements ToDoBlocState {
  const factory _ToDoBlocState(
      final List<ToDo> toDoList, final BlocStatus status) = _$_ToDoBlocState;

  @override
  List<ToDo> get toDoList;
  @override
  BlocStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ToDoBlocStateCopyWith<_$_ToDoBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
