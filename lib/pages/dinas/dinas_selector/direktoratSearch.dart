import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_direktorat_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class DirektoratSearchDelegate extends SearchDelegate<DataDirektorat?> {
  DirektoratSearchDelegate();

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
          AddDinasBloc()..add(OnSelectDirektorat(page: 1, search: query)),
      child: BlocListener<AddDinasBloc, AddDinasState>(
        listener: (context, state) {},
        child: BlocBuilder<AddDinasBloc, AddDinasState>(
          builder: (context, state) {
            if (state is AddDinasLoading) {
              return Center(child: CircularProgressIndicator());
            }

            if (state is SelectDirektoratSuccessInBackground) {return ListView.builder(
              itemCount: state.dataDirektorat.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        state.dataDirektorat[index].nama ?? '-',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      onTap: () {
                        close(context, state.dataDirektorat[index]);
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
