import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
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
        } else if (state is ListPengumumanFailedUserExpired) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else if (state is ListPengumumanFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
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
                    Expanded(
                      child: Text(
                        "Semua Pengumuman",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {},
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<PengumumanBloc, PengumumanState>(
                  builder: (context, state) {
                    var listPengumuman =
                        context.read<PengumumanBloc>().listpengumuman;
                    return Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.sp, right: 10.sp),
                        child: Column(
                          children: [
                            Expanded(
                              child: listPengumuman.isNotEmpty
                                  ? ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: listPengumuman.length,
                                      itemBuilder: (context, index) {
                                        var pengumuman = listPengumuman[index];
                                        return Padding(
                                          padding: EdgeInsets.only(bottom: 15.sp),
                                          child: PengumumanCard(
                                            imageUrl: pengumuman.thumb,
                                            judul: pengumuman.judul,
                                            tanggal: DateFormat(
                                              "dd MMMM yyyy",
                                              "id_ID",
                                            ).format(
                                              DateFormat(
                                                "dd/MM/yyyy HH:mm",
                                              ).parse(
                                                  pengumuman.createdAt ?? '-'),
                                            ),
                                            tag: '#${pengumuman.tag}',
                                            detail: pengumuman.content,
                                          ),
                                        );
                                      },
                                    )
                                  : Center(
                                      child: EmptyStateBuilder(),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    );
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

class EmptyStateBuilder extends StatelessWidget {
  const EmptyStateBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/box_nodata.png",
          height: size.width * 1 / 2.5,
        ),
        const SizedBox(height: 8),
        Text(
          "Tidak Ada Pengumuman",
          style: GoogleFonts.poppins(
            color: MyColorsConst.darkColor,
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}
