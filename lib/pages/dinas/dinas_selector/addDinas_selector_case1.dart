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
  final List<DataDepartemen> departemenData;
  final List<DataDepartemen> filteredData;

  DepartemenSearchDelegate({
    required this.departemenData,
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
    final searchResults = departemenData
        .where((departemen) =>
            departemen.nama!.toLowerCase().contains(query.toLowerCase()))
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

class _DepartemenSearchDelegate extends SearchDelegate<DataDepartemen?> {
  final List<DataDepartemen> departemenData;
  final List<DataDepartemen> filteredData;

  _DepartemenSearchDelegate({
    required this.departemenData,
  }) : filteredData = List.from(departemenData);

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
    final searchResults = departemenData
        .where((departemen) =>
            departemen.nama!.toLowerCase().contains(query.toLowerCase()))
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
          query = query;
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

// class _PicSearchDelegate extends SearchDelegate<DataPic?> {
//   final List<DataPic> picData;
//   final List<DataPic> filteredData;

//   _PicSearchDelegate({
//     required this.picData,
//   }) : filteredData = List.from(picData);

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, null);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     final searchResults = picData
//         .where((pic) =>
//             pic.name!.toLowerCase().contains(query.toLowerCase()))
//         .toList();

//     return ListView.builder(
//       itemCount: searchResults.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(searchResults[index].name ?? '-'),
//           onTap: () {
//             close(context, searchResults[index]);
//           },
//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return buildResults(context);
//   }
// }

// class PicSearchDelegate extends SearchDelegate<DataPic?> {
//   final List<DataPic> picData;
//   final List<DataPic> filteredData;

//   PicSearchDelegate({
//     required this.picData,
//     required this.filteredData,
//   });

//   int _currentPage = 1;
//   int _itemsPerPage = 10;

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//         color: MyColorsConst.primaryColor,
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, null);
//       },
//       color: MyColorsConst.primaryColor,
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     final searchResults = _getSearchResults();

//     return ListView.builder(
//       itemCount: _calculateItemCount(searchResults),
//       itemBuilder: (context, index) {
//         if (index == searchResults.length) {
//           _loadMoreData(context);
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }

//         return Column(
//           children: [
//             ListTile(
//               title: Text(
//                 searchResults[index].name ?? '-',
//                 style: TextStyle(
//                   fontSize: 14,
//                 ),
//               ),
//               onTap: () {
//                 close(context, searchResults[index]);
//               },
//             ),
//             const Divider(
//               height: 10,
//               thickness: 0.5,
//               color: MyColorsConst.lightDarkColor,
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return buildResults(context);
//   }

//   List<DataPic> _getSearchResults() {
//     return picData
//         .where((pic) => pic.name!.toLowerCase().contains(query.toLowerCase()))
//         .toList();
//   }

//   int _calculateItemCount(List<DataPic> searchResults) {
//     return searchResults.length + (_hasNextPage() ? 1 : 0);
//   }

//   void _loadMoreData(BuildContext context) {
//     if (_hasNextPage()) {
//       _currentPage++;
//       showResults(context);
//     }
//   }

//   bool _hasNextPage() {
//     return (_currentPage + 1) * _itemsPerPage <= picData.length;
//   }
// }
