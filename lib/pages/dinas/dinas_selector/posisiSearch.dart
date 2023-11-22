import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
import 'package:sj_presensi_mobile/services/model/dinas/getDataDinas/get_posisi_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class PosisiSearchDelegate extends SearchDelegate<DataPosisi?> {
  PosisiSearchDelegate();

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
          AddDinasBloc()..add(OnSelectPosisi(page: 1, search: query)),
      child: BlocListener<AddDinasBloc, AddDinasState>(
        listener: (context, state) {},
        child: BlocBuilder<AddDinasBloc, AddDinasState>(
          builder: (context, state) {
            if (state is AddDinasLoading) {
              return Center(child: CircularProgressIndicator());
            }

            if (state is SelectPosisiSuccessInBackground) {
              return ListView.builder(
                itemCount: state.dataPosisi.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(
                          state.dataPosisi[index].descKerja ?? '-',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        onTap: () {
                          close(context, state.dataPosisi[index]);
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