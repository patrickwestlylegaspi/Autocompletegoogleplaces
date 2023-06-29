import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PickUpTimeBar extends StatefulWidget {
  const PickUpTimeBar({
    super.key,
  });

  @override
  State<PickUpTimeBar> createState() => _PickUpTimeBarState();
}

class _PickUpTimeBarState extends State<PickUpTimeBar> {

  @override
  Widget build(BuildContext context) {
    return DateTimeField(
      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
      decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.access_time_rounded,
            color: Colors.blue,
          ),
          labelText: 'PICK UP TIME',
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),

      onShowPicker: (context, currentValue) async {
        final time = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.fromDateTime(
              currentValue ?? DateTime.now().subtract(const Duration(days: 0))),
        );
        return DateTimeField.convert(time);
      }, format: DateFormat("hh:mm a"),
    );
  }
}
