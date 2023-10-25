import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class MonthPicker extends StatefulWidget {
  Function(bool? sortState) onTap;
  MonthPicker({Key? key, required this.onTap}) : super(key: key);

  @override
  State<MonthPicker> createState() => _MonthPickerState();
}

class _MonthPickerState extends State<MonthPicker> {
  bool _sortState = false;
  final List<String> _months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  String? _selectedMonth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 30,
      child: InputDecorator(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide(
              color: MyColorsConst.lightDarkColor,
              width: 1.0,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isExpanded: true,
            value: _selectedMonth,
            onChanged: (String? newValue) {
              setState(() {
                _selectedMonth = newValue;
                widget.onTap(_sortState);
              });
            },
            items: _months.map((String month) {
              return DropdownMenuItem<String>(
                value: month,
                child: Text(
                  month,
                  style: TextStyle(
                    color: MyColorsConst.darkColor,
                    fontSize: 12,
                  ),
                ),
              );
            }).toList(),
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: MyColorsConst.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
