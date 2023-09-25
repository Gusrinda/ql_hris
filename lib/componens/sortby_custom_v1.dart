import 'package:flutter/material.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

class SortByCustomV1 extends StatefulWidget {
  Function(bool? sortState) onTap;
  SortByCustomV1({
    super.key,
    required this.onTap,
  });

  @override
  State<SortByCustomV1> createState() => _SortByCustomV1State();
}

class _SortByCustomV1State extends State<SortByCustomV1> {
  bool _sortState = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(left: 12),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _sortState = !_sortState;
            widget.onTap(_sortState);
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
              _sortState ? "Terlama" : "Terbaru",
              style: const TextStyle(
                color: MyColorsConst.primaryColor,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
            Icon(
              _sortState
                  ? Icons.arrow_drop_up_rounded
                  : Icons.arrow_drop_down_rounded,
              size: 20,
              color: MyColorsConst.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

