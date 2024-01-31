import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/download_berkas/detail_list_berkas.dart';
import 'package:sj_presensi_mobile/pages/download_berkas/kategori_berkas_bloc/berkas_bloc.dart';
import 'package:sj_presensi_mobile/pages/download_berkas/list_berkas_bloc/list_berkas_bloc.dart';
import 'package:sj_presensi_mobile/services/model/berkas_model.dart';
import 'package:sj_presensi_mobile/utils/const.dart';
import 'package:url_launcher/link.dart';

class DownloadBerkasPage extends StatefulWidget {
  static const routeName = '/DownloadBerkasPage';
  const DownloadBerkasPage({super.key});

  @override
  State<DownloadBerkasPage> createState() => _DownloadBerkasPageState();
}

class _DownloadBerkasPageState extends State<DownloadBerkasPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BerkasBloc>().add(GetKategoriBerkas());
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<BerkasBloc, BerkasState>(
      listener: (context, state) async {
        if (state is KategoriBerkasLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is KategoriBerkasSuccess) {
          LoadingDialog.dismissDialog(context);
        } else if (state is KategoriBerkasFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is KategoriBerkasFailedUserExpired) {
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
        } else if (state is KategoriBerkasFailedInBackground) {
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
                        "Kategori Berkas",
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
                child: BlocBuilder<BerkasBloc, BerkasState>(
                  builder: (context, state) {
                    var kategoriBerkas =
                        context.read<BerkasBloc>().kategoriBerkas;
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
                            const SizedBox(height: 10),
                            DashboardItem(
                              label: 'SOP Perusahaan',
                              image: 'assets/images/sop_sj.png',
                              kategoriBerkas: kategoriBerkas
                                  .where((item) => item.kategori == 'SOP')
                                  .toList(),
                            ),
                            DashboardItem(
                              label: 'Sucess Jaya Academy',
                              image: 'assets/images/academy_sj.png',
                              kategoriBerkas: kategoriBerkas
                                  .where((item) => item.kategori == 'BERKAS')
                                  .toList(),
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

class DashboardItem extends StatelessWidget {
  final String label;
  final String image;
  final List<DataBerkas> kategoriBerkas;

  const DashboardItem({
    Key? key,
    required this.label,
    required this.image,
    required this.kategoriBerkas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        String selectedKategori = kategoriBerkas.isNotEmpty
            ? kategoriBerkas.first.kategori ?? ""
            : "";
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => ListBerkasBloc(),
              child: DetailListBerkasPage(kategori: selectedKategori),
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color.fromARGB(255, 219, 220, 255)),
          color: MyColorsConst.whiteColor,
          boxShadow: [
            BoxShadow(
              color: MyColorsConst.primaryColor.withOpacity(0.15),
              offset: const Offset(0, 2),
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
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF6F7BF7).withOpacity(0.0),
                    child: Image.asset(image),
                  ),
                  SizedBox(width: 15.sp),
                  Text(
                    label,
                    style: GoogleFonts.poppins(
                      color: MyColorsConst.darkColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
