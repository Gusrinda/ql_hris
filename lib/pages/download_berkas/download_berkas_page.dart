import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/download_berkas/bloc/berkas_bloc.dart';
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
      context.read<BerkasBloc>().add(GetListBerkas());
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<BerkasBloc, BerkasState>(
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
                child: BlocBuilder<BerkasBloc, BerkasState>(
                  builder: (context, state) {
                    var listberkas = context.read<BerkasBloc>().listberkas;
                    // Filter berkas berdasarkan kategori
                    var sopBerkas = listberkas
                        .where((berkas) => berkas.kategori == "SOP")
                        .toList();
                    var academyBerkas = listberkas
                        .where((berkas) => berkas.kategori == "ACADEMY")
                        .toList();
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
                            DashboardItem(
                              label: 'Prosedur SOP Perusahaan',
                              image: 'assets/images/sop_sj.png',
                              docUrl: sopBerkas.isNotEmpty
                                  ? sopBerkas[0].url
                                  : null,
                            ),
                            DashboardItem(
                              label: 'Sucess Jaya Academy',
                              image: 'assets/images/academy_sj.png',
                              docUrl: academyBerkas.isNotEmpty
                                  ? academyBerkas[0].url
                                  : null,
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
  final String? docUrl;

  const DashboardItem({
    Key? key,
    required this.label,
    required this.image,
    this.docUrl,
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
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xFF6F7BF7).withOpacity(0.0),
                      child: Image.asset(image),
                    ),
                    SizedBox(width: 15.sp),
                    Text(
                      label,
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
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
