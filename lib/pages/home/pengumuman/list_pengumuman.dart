import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/home/pengumuman/bloc/pengumuman_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/pengumuman/pengumuman_card.widget.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ListPengumumanPage extends StatefulWidget {
  static const routeName = '/ListPengumumanPage';
  const ListPengumumanPage({super.key});

  @override
  State<ListPengumumanPage> createState() => _ListPengumumanPageState();
}

class _ListPengumumanPageState extends State<ListPengumumanPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PengumumanBloc>().add(GetListPengumuman());
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<PengumumanBloc, PengumumanState>(
      listener: (context, state) async {
        if (state is ListPengumumanLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListPengumumanSuccess) {
          LoadingDialog.dismissDialog(context);
        } else if (state is ListPengumumanFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                MyColorsConst.primaryDarkColor,
                MyColorsConst.primaryColor,
              ],
              stops: [0.0, 0.1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40.sp),
              Container(
                padding: EdgeInsets.all(5.0.sp),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width * 1 / 4.5,
                    ),
                    Expanded(
                      child: Text(
                        "Pengumuman",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<PengumumanBloc, PengumumanState>(
                  builder: (context, state) {
                    if (state is ListPengumumanSuccess) {
                      var listPengumuman = state.dataPengumuman;
                      return Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.sp),
                          child: Column(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: listPengumuman.length,
                                  itemBuilder: (context, index) {
                                    var pengumuman = listPengumuman[index];
                                    return Padding(
                                      padding: EdgeInsets.only(bottom: 15.sp),
                                      child: PengumumanCard(
                                        imageUrl:
                                            'https://server.qqltech.com:7007/uploads/t_artikel/${pengumuman.foto}',
                                        judul: pengumuman.judul,
                                        tanggal:
                                            DateFormat('dd MMMM yyyy', 'id_ID')
                                                .format(pengumuman.tanggal!),
                                        detail: pengumuman.detail,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Center(
                        child: Text(
                          "Gagal Load Data",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
