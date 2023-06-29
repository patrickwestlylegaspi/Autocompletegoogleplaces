import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DropOffDateBar extends StatefulWidget {
  const DropOffDateBar({
    super.key,
  });

  @override
  State<DropOffDateBar> createState() => _DropOffDateBarState();
}

class _DropOffDateBarState extends State<DropOffDateBar> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DateTimeField(
        style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 12),
        decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.calendar_today,
              color: Colors.blue,
            ),
            labelText: 'DROP-OFF DATE',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue))),
        onShowPicker: (context, currentValue) {
          return showDatePicker(
            context: context,
            firstDate: DateTime.now().subtract(const Duration(days: 0)),
            initialDate: currentValue ?? DateTime.now(),
            lastDate: DateTime(2100),
          );
        },format: DateFormat("MMMM d, yyyy "),
      ),
    );
  }
}
