import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/services/model/report_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ReportDetailPage extends StatelessWidget {
  static const routeName = '/ReportDetailPage';
  final String? title;
  final ReportModel reportModel;
  const ReportDetailPage({
    super.key,
    this.title,
    required this.reportModel,
  });

  _save2Clipboard(BuildContext context, String data) {
    Clipboard.setData(ClipboardData(text: data));
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Tersimpan di Clipboard"),
      duration: Duration(milliseconds: 1000),
    ));
  }

  @override
  Widget build(BuildContext context) {
    ReportDetailModel dataPagi = ReportDetailModel();
    ReportDetailModel dataSore = ReportDetailModel();
    if (reportModel.reportDetails != null &&
        reportModel.reportDetails!.isNotEmpty) {
      dataPagi = reportModel.reportDetails![0];
    }
    if (reportModel.reportDetails != null &&
        reportModel.reportDetails!.length > 1) {
      dataSore = reportModel.reportDetails![1];
    }
    return Scaffold(
      appBar: appBarCustomV1(title: title ?? "Detail Laporan"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    reportModel.date != null
                        ? DateFormat('EEEE, dd-MM-yyyy', 'id_ID')
                            .format(reportModel.date!)
                        : "-",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: MyColorsConst.semiDarkColor,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              detailCard(
                isMorningReport: true,
                time: dataPagi.time,
                content: <String>[
                  dataPagi.pastTask ?? "-",
                  dataPagi.nextTask ?? "-",
                  dataPagi.keterangan ?? "-",
                ],
              ),
              const SizedBox(height: 24),
              detailCard(
                isMorningReport: false,
                time: dataSore.time,
                content: <String>[
                  dataSore.pastTask ?? "-",
                  dataSore.nextTask ?? "-",
                  dataSore.keterangan ?? "-",
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget detailCard({
    bool isMorningReport = true,
    DateTime? time,
    required List<String> content,
  }) {
    assert(content.length == 3, 'The list must contain exactly 3 values.');
    var cardItem = {
      true: {
        "title": " Pagi",
        "icon": Icons.wb_sunny_outlined,
        "subTitles": [
          "Task kemarin yang belum selesai",
          "Task yang dikerjakan hari ini",
          "Keterangan",
        ]
      },
      false: {
        "title": "Laporan Sore",
        "icon": Icons.dark_mode_outlined,
        "subTitles": [
          "Task hari ini yang sudah selesai",
          "Task hari ini yang belum selesai",
          "Keterangan",
        ]
      }
    };
    var borderRadius = 5.0;

    return Builder(
      builder: (context) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        elevation: 3,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: MyColorsConst.primaryLight3Color,
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Icon(
                      Icons.wb_sunny_outlined,
                      size: 24,
                    ),
                    const SizedBox(width: 24),
                    Text(
                      cardItem[isMorningReport]!["title"] as String,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: MyColorsConst.whiteColor,
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Icon(
                          cardItem[isMorningReport]!["icon"] as IconData,
                          size: 18,
                          color: MyColorsConst.disableColor,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          "Submit at ${time != null ? DateFormat('HH:mm').format(time) : '-'}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: MyColorsConst.disableColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 12),
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 8),
                      itemBuilder: (context, index) => Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (cardItem[isMorningReport]!["subTitles"]!
                                as List)[index] as String,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: MyColorsConst.semiDarkColor,
                            ),
                          ),
                          const SizedBox(height: 6),
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                Container(
                                  width: 3,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    color: const Color(0x7f9e9e9e),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: SelectableText(
                                      onTap: () => _save2Clipboard(
                                        context,
                                        content[index].trim(),
                                      ),
                                      content[index].trim(),
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: MyColorsConst.semiDarkColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
