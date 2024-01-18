import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/download_berkas/list_berkas_bloc/list_berkas_bloc.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:url_launcher/link.dart';

class DetailListBerkasPage extends StatefulWidget {
  static const routeName = '/DetailListBerkasPage';
  const DetailListBerkasPage({
    super.key,
    this.kategori,
  });
  final String? kategori;

  @override
  State<DetailListBerkasPage> createState() => _DetailListBerkasPageState();
}

class _DetailListBerkasPageState extends State<DetailListBerkasPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<ListBerkasBloc>()
          .add(GetListBerkas(kategori: widget.kategori ?? ''));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<ListBerkasBloc, ListBerkasState>(
      listener: (context, state) async {
        if (state is ListBerkasLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ListBerkasSuccess) {
          LoadingDialog.dismissDialog(context);
        } else if (state is ListBerkasFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ListBerkasFailedUserExpired) {
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
        } else if (state is ListBerkasFailedInBackground) {
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
              stops: [0.0, 0.12],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                padding: EdgeInsets.all(5.0),
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
                      width: size.width * 1 / 5,
                    ),
                    Expanded(
                      child: Text(
                        "Download Berkas",
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<ListBerkasBloc, ListBerkasState>(
                  builder: (context, state) {
                    var listberkas = context.read<ListBerkasBloc>().listBerkas;
                    if (listberkas.isEmpty) {
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
                          child: Center(
                            child: EmptyStateBuilder(),
                          ),
                        ),
                      );
                    }
                    // Filter berkas berdasarkan kategori
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
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: listberkas.length,
                          itemBuilder: (context, index) {
                            var dataBerkas = listberkas[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DashboardItem(
                                  label: dataBerkas.nama ?? '-',
                                  desc: dataBerkas.desc ?? '-',
                                  docUrl: dataBerkas.url,
                                )
                              ],
                            );
                          },
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

class DashboardItem extends StatelessWidget {
  final String label;
  final String? docUrl;
  final String desc;

  const DashboardItem({
    Key? key,
    required this.label,
    required this.docUrl,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Uri? uri = docUrl != null ? Uri.parse(docUrl!) : null;
    return Link(
      target: LinkTarget.self,
      uri: uri,
      builder: (context, followLink) => GestureDetector(
        onTap: followLink,
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xFFDDDDDD)),
            color: MyColorsConst.whiteColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0, 0),
                blurRadius: 5,
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 15.sp),
          child: Row(
            children: [
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          label,
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: MyColorsConst.darkColor),
                        ),
                        SizedBox(height: 10.sp),
                        Text(
                          'Deskripsi : $desc',
                          style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: MyColorsConst.lightDarkColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.sp),
                  child: Center(
                    child: Icon(
                      Icons.file_download_outlined,
                      size: 20.sp,
                      color: MyColorsConst.primaryColor,
                    ),
                  ),
                ),
              ),
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
          "Tidak Ada Berkas",
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
