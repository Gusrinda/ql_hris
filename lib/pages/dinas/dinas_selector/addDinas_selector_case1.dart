import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_departemen_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_direktorat_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_divisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_pic_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_posisi_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_templatespd_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

// Template Spd Selector
class TemplateSpdSearchDelegate extends SearchDelegate<DataTemplateSpd?> {
  final List<DataTemplateSpd> templateSpdData;
  final List<DataTemplateSpd> filteredData;

  TemplateSpdSearchDelegate({
    required this.templateSpdData,
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
    final searchResults = templateSpdData
        .where((templateSpd) =>
            templateSpd.kode!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                searchResults[index].kode ?? '-',
                style: TextStyle(
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

class _TemplateSpdSearchDelegate extends SearchDelegate<DataTemplateSpd?> {
  final List<DataTemplateSpd> templateSpdData;
  final List<DataTemplateSpd> filteredData;

  _TemplateSpdSearchDelegate({
    required this.templateSpdData,
  }) : filteredData = List.from(templateSpdData);

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
    final searchResults = templateSpdData
        .where((templateSpd) =>
            templateSpd.kode!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(searchResults[index].kode ?? '-'),
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

// Divisi Selector
class DivisiSearchDelegate extends SearchDelegate<DataDivisi?> {
  final List<DataDivisi> divisiData;
  final List<DataDivisi> filteredData;

  DivisiSearchDelegate({
    required this.divisiData,
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
    final searchResults = divisiData
        .where((divisi) =>
            divisi.nama!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                searchResults[index].nama ?? '-',
                style: TextStyle(
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

class _DivisiSearchDelegate extends SearchDelegate<DataDivisi?> {
  final List<DataDivisi> divisiData;
  final List<DataDivisi> filteredData;

  _DivisiSearchDelegate({
    required this.divisiData,
  }) : filteredData = List.from(divisiData);

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
    final searchResults = divisiData
        .where((divisi) =>
            divisi.nama!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(searchResults[index].nama ?? '-'),
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

// Departemen Selector
class DepartemenSearchDelegate extends SearchDelegate<DataDepartemen?> {
  DepartemenSearchDelegate();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
          showSuggestions(context);
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
    return BlocProvider(
      create: (context) =>
          AddDinasBloc()..add(OnSelectDepartemen(page: 1, search: query)),
      child: BlocListener<AddDinasBloc, AddDinasState>(
        listener: (context, state) {},
        child: BlocBuilder<AddDinasBloc, AddDinasState>(
          builder: (context, state) {
            if (state is AddDinasLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is SelectDepartemenSuccessInBackground) {
              return ListView.builder(
                itemCount: state.dataDepartemen.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(
                          state.dataDepartemen[index].nama ?? '-',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        onTap: () {
                          close(context, state.dataDepartemen[index]);
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
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}

// Posisi Selector
class PosisiSearchDelegate extends SearchDelegate<DataPosisi?> {
  final List<DataPosisi> posisiData;
  final List<DataPosisi> filteredData;

  PosisiSearchDelegate({
    required this.posisiData,
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
    final searchResults = posisiData
        .where((posisi) =>
            posisi.descKerja!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                searchResults[index].descKerja ?? '-',
                style: TextStyle(
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

class _PosisiSearchDelegate extends SearchDelegate<DataPosisi?> {
  final List<DataPosisi> posisiData;
  final List<DataPosisi> filteredData;

  _PosisiSearchDelegate({
    required this.posisiData,
  }) : filteredData = List.from(posisiData);

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
    final searchResults = posisiData
        .where((posisi) =>
            posisi.descKerja!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(searchResults[index].descKerja ?? '-'),
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

// Direktorat Selector
class DirektoratSearchDelegate extends SearchDelegate<DataDirektorat?> {
  final List<DataDirektorat> direktoratData;
  final List<DataDirektorat> filteredData;

  DirektoratSearchDelegate({
    required this.direktoratData,
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
    final searchResults = direktoratData
        .where((direktorat) =>
            direktorat.nama!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                searchResults[index].nama ?? '-',
                style: TextStyle(
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

class _DirektoratSearchDelegate extends SearchDelegate<DataDirektorat?> {
  final List<DataDirektorat> direktoratData;
  final List<DataDirektorat> filteredData;

  _DirektoratSearchDelegate({
    required this.direktoratData,
  }) : filteredData = List.from(direktoratData);

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
    final searchResults = direktoratData
        .where((direktorat) =>
            direktorat.nama!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(searchResults[index].nama ?? '-'),
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

// Pic Selector
class PicSearchDelegate extends SearchDelegate<DataPic?> {
  PicSearchDelegate();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
          showSuggestions(context);
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
    return BlocProvider(
      create: (context) =>
          AddDinasBloc()..add(OnSelectPic(page: 1, search: query)),
      child: BlocListener<AddDinasBloc, AddDinasState>(
        listener: (context, state) {},
        child: BlocBuilder<AddDinasBloc, AddDinasState>(
          builder: (context, state) {
            if (state is AddDinasLoading) {
              return Center(child: CircularProgressIndicator());
            }

            if (state is SelectPicSuccessInBackground) {
              return ListView.builder(
                itemCount: state.dataPic.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(
                          state.dataPic[index].name ?? '-',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        onTap: () {
                          close(context, state.dataPic[index]);
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
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}
