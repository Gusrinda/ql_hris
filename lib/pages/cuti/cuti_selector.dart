import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/services/model/cuti/getDataCuti/get_alasan_cuti_model.dart';
import 'package:sj_presensi_mobile/services/model/cuti/getDataCuti/get_tipe_cuti_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class TipeCutiSearchDelegate extends SearchDelegate<DataTipeCuti?> {
  final List<DataTipeCuti> tipeCutiData;
  final List<DataTipeCuti> filteredData;

  TipeCutiSearchDelegate({
    required this.tipeCutiData,
    required this.filteredData,
  });

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
        color: MyColorsConst.primaryColor,
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
      color: MyColorsConst.primaryColor,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final searchResults = tipeCutiData
        .where((tipeCuti) =>
            tipeCuti.value!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                searchResults[index].value ?? '-',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              onTap: () {
                close(context, searchResults[index]);
              },
            ),
            const Divider(
              height: 10,
              thickness: 0.5,
              color: MyColorsConst.lightDarkColor,
            ),
          ],
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}

class _TipeCutiSearchDelegate extends SearchDelegate<DataTipeCuti?> {
  final List<DataTipeCuti> tipeCutiData;
  final List<DataTipeCuti> filteredData;

  _TipeCutiSearchDelegate({
    required this.tipeCutiData,
  }) : filteredData = List.from(tipeCutiData);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final searchResults = tipeCutiData
        .where((tipeCuti) =>
            tipeCuti.value!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(searchResults[index].value ?? '-'),
          onTap: () {
            close(context, searchResults[index]);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}

// tampilkan alasan cuti
class AlasanCutiSearchDelegate extends SearchDelegate<Datum?> {
  final List<Datum> alasanCutiData;
  final List<Datum> filteredData;

  AlasanCutiSearchDelegate({
    required this.alasanCutiData,
    required this.filteredData,
  });

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
        color: MyColorsConst.primaryColor,
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
      color: MyColorsConst.primaryColor,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final searchResults = alasanCutiData
        .where((alasanCutiData) =>
            alasanCutiData.value!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                searchResults[index].value ?? '-',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              onTap: () {
                close(context, searchResults[index]);
              },
            ),
            const Divider(
              height: 10,
              thickness: 0.5,
              color: MyColorsConst.lightDarkColor,
            ),
          ],
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}

class _AlasanCutiSearchDelegate extends SearchDelegate<Datum?> {
  final List<Datum> alasanCutiData;
  final List<Datum> filteredData;

  _AlasanCutiSearchDelegate({
    required this.alasanCutiData,
  }) : filteredData = List.from(alasanCutiData);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final searchResults = alasanCutiData
        .where((alasanCutiData) =>
            alasanCutiData.value!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(searchResults[index].value ?? '-'),
          onTap: () {
            close(context, searchResults[index]);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}