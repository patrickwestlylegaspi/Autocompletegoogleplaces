import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DropOffTimeBar extends StatefulWidget {
  const DropOffTimeBar({
    super.key,
  });

  @override
  State<DropOffTimeBar> createState() => _DropOffTimeBarState();
}

class _DropOffTimeBarState extends State<DropOffTimeBar> {
  final format = DateFormat("hh:mm a");
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: <Widget>[
        DateTimeField(
          style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 12),
          decoration: const InputDecoration(
            labelText: 'DROP-OFF TIME',
            prefixIcon: Icon(
              Icons.access_time_rounded,
              color: Colors.blue,
            ),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          ),
          format: format,
          onShowPicker: (context, currentValue) async {
            final time = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.fromDateTime(currentValue ??
                  DateTime.now().subtract(const Duration(days: 0))),
            );
            return DateTimeField.convert(time);
          },
        ),
      ]),
    );
  }
}
