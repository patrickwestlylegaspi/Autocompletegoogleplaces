import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PickUpDateBar extends StatefulWidget {
  const PickUpDateBar({
    super.key,
  });

  @override
  State<PickUpDateBar> createState() => _PickUpDateBarState();
}

class _PickUpDateBarState extends State<PickUpDateBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DateTimeField(
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.calendar_today_rounded, color: Colors.blue),
            labelText: 'PICK UP DATE',
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
        onShowPicker: (context, currentValue) {
          return showDatePicker(
            context: context,
            firstDate: DateTime.now().subtract(const Duration(days: 0)),
            initialDate: currentValue ?? DateTime.now(),
            lastDate: DateTime(2100),
          );
        },
        format: DateFormat("MMMM d, yyyy "),
      ),
    );
  }
}
