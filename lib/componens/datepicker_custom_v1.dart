import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

class DatePickerCustomV1 extends StatefulWidget {
  Function(DateTime? date) onDateSelected;
  DatePickerCustomV1({
    Key? key,
    required this.onDateSelected,
  }) : super(key: key);

  @override
  State<DatePickerCustomV1> createState() => _DatePickerCustomV1State();
}

class _DatePickerCustomV1State extends State<DatePickerCustomV1> {
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(left: 12),
      child: ElevatedButton(
        onPressed: () {
          showMonthPicker(
            context: context,
            initialDate: DateTime(DateTime.now().year, DateTime.now().month),
            firstDate: DateTime(DateTime.now().year - 5, 1),
            lastDate: DateTime(DateTime.now().year + 5, 12),
            locale: const Locale('id'),
            headerColor: MyColorsConst.primaryColor,
            headerTextColor: MyColorsConst.whiteColor,
            selectedMonthBackgroundColor: MyColorsConst.primaryLightColor,
            selectedMonthTextColor: MyColorsConst.whiteColor,
            unselectedMonthTextColor: Colors.green,
            roundedCornersRadius: 12,
            confirmWidget: const Text(
              'Confirm',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MyColorsConst.primaryColor,
              ),
            ),
            cancelWidget: const Text(
              'Cancel',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MyColorsConst.primaryColor,
              ),
            ),
          ).then((DateTime? date) {
            if (date != null) {
              setState(() {
                selectedDate = date;
                widget.onDateSelected(selectedDate);
              });
            }
          });
        },
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(0, 0),
          elevation: 0,
          backgroundColor: Colors.transparent,
          padding: const EdgeInsets.all(6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: const BorderSide(
              color: MyColorsConst.primaryColor,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedDate != null
                  ? DateFormat('MMMM y').format(selectedDate!)
                  : DateFormat('MMMM y').format(DateTime.now()),
              style: const TextStyle(
                color: MyColorsConst.primaryColor,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
            const Icon(
              Icons.date_range_outlined,
              size: 20,
              color: MyColorsConst.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
