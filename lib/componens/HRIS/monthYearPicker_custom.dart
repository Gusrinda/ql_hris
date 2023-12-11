import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class MonthPicker extends StatefulWidget {
  Function(DateTime? months, DateTime? years) onTap;
  DateTime? selectedYear;

  MonthPicker({Key? key, required this.onTap, this.selectedYear})
      : super(key: key);

  @override
  State<MonthPicker> createState() => _MonthPickerState();
}

class _MonthPickerState extends State<MonthPicker> {
  DateTime? _selected;
  String? _selectedMonth;
  String? _tempSelectedMonth;
  final List<String> _months = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];

  @override
  void initState() {
    super.initState();
    _selectedMonth = DateFormat('MMMM').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showCupertinoDialog(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 1 / 2.3,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: const Color(0xFFDDDDDD)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  _selectedMonth ?? '',
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const Spacer(),
            const Icon(
              CupertinoIcons.chevron_down,
              color: Colors.blue,
              size: 15,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }

  void _showCupertinoDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: CupertinoPicker(
                  backgroundColor: Colors.transparent,
                  itemExtent: 32,
                  onSelectedItemChanged: (int index) {
                    setState(() {
                      _tempSelectedMonth = _months[index];
                    });
                  },
                  children: _months.map((String month) {
                    return Center(
                      child: Text(
                        month,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Row(
                children: [
                  CupertinoButton(
                    child: Text(
                      'Batal',
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  CupertinoButton(
                    child: Text(
                      'Pilih',
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      if (_tempSelectedMonth != null) {
                        setState(() {
                          _selectedMonth = _tempSelectedMonth;
                          _selected = DateTime(
                            widget.selectedYear?.year ?? DateTime.now().year,
                            _months.indexOf(_selectedMonth!) + 1,
                            DateTime.now().day,
                          );
                        });
                        widget.onTap(_selected, widget.selectedYear);
                      }
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class YearPickerCustom extends StatefulWidget {
  Function(DateTime? years, DateTime? months) onTap;
  final DateTime? selectedMonth; // Tambahkan properti ini

  YearPickerCustom({Key? key, required this.onTap, this.selectedMonth})
      : super(key: key);

  @override
  State<YearPickerCustom> createState() => _YearPickerCustomState();
}

class _YearPickerCustomState extends State<YearPickerCustom> {
  DateTime? _selected;
  int? _tempSelectedYear;
  int? _selectedYear;
  final List<int> _years =
      List.generate(20, (index) => DateTime.now().year - 10 + index);

  @override
  void initState() {
    super.initState();
    _selectedYear = DateTime.now().year;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showCupertinoDialog(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 1 / 2.3,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Color(0xFFDDDDDD)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  _selectedYear != null ? _selectedYear.toString() : '',
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const Spacer(),
            const Icon(
              CupertinoIcons.chevron_down,
              color: MyColorsConst.primaryColor,
              size: 15,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }

  void _showCupertinoDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          height: 300,
          child: Column(
            children: [
              Expanded(
                child: CupertinoPicker(
                  backgroundColor: Colors.transparent,
                  itemExtent: 32,
                  onSelectedItemChanged: (int index) {
                    setState(() {
                      _tempSelectedYear = _years[index];
                    });
                  },
                  children: _years.map((int year) {
                    return Center(
                      child: Text(
                        year.toString(),
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Row(
                children: [
                  CupertinoButton(
                    child: Text(
                      'Batal',
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  CupertinoButton(
                    child: Text(
                      'Pilih',
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      if (_tempSelectedYear != null) {
                        setState(() {
                          _selectedYear = _tempSelectedYear;
                          if (widget.selectedMonth != null) {
                            _selected = DateTime(
                                _selectedYear!,
                                widget.selectedMonth!.month + 1,
                                DateTime.now().day);
                          } else {
                            _selected = DateTime(
                              _selectedYear!,
                              DateTime.now().month + 1,
                              DateTime.now().day,
                            );
                          }
                        });
                        widget.onTap(_selected, widget.selectedMonth);
                      }
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
