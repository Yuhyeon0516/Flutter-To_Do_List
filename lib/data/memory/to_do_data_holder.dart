import 'package:fast_app_base/data/memory/to_do_data_notifier.dart';
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
}
