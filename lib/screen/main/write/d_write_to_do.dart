import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/common/util/app_keyboard_util.dart';
import 'package:fast_app_base/common/widget/scaffold/bottom_dialog_scaffold.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/write/vo_write_to_do_result.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

class WriteToDoDialog extends DialogWidget<WriteToDoResult> {
  WriteToDoDialog({super.key});

  @override
  DialogState<WriteToDoDialog> createState() => _WriteToDoDialogState();
}

class _WriteToDoDialogState extends DialogState<WriteToDoDialog>
    with AfterLayoutMixin {
  DateTime _selectedDate = DateTime.now();
  final textController = TextEditingController();
  final node = FocusNode();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    AppKeyboardUtil.show(context, node);
  }

  @override
  Widget build(BuildContext context) {
    return BottomDialogScaffold(
      body: RoundedContainer(
        color: context.backgroundColor,
        child: Column(
          children: [
            Row(
              children: [
                '할 일을 작성해주세요.'.text.size(18).bold.make(),
                const Spacer(),
                _selectedDate.formattedDate.text.make(),
                IconButton(
                  onPressed: _selectCalendar,
                  icon: const Icon(Icons.calendar_month),
                )
              ],
            ),
            const Height(20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    focusNode: node,
                    controller: textController,
                  ),
                ),
                RoundButton(
                  text: '추가',
                  onTap: () {
                    widget.hide(
                        WriteToDoResult(_selectedDate, textController.text));
                  },
                )
              ],
            ),
            const Height(15),
          ],
        ),
      ),
    );
  }

  void _selectCalendar() async {
    final date = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: _selectedDate.subtract(const Duration(days: 365)),
      lastDate: _selectedDate.add(const Duration(days: 365 * 10)),
    );

    if (date != null) {
      setState(() {
        _selectedDate = date;
      });
    }
  }
}
