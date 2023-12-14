import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/image_form_custom_v2.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_form_custom_v2.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/bloc/profile_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/data_bahasa_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/bloc/biodata_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/data_diri_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/data_keluarga_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/data_organisasi_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/list_pelatihan_bloc/list_pelatihan_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/data_pelatihan_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/data_pendidikan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/data_pengalaman_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/data_prestasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/password_change.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_biodata_karyawan.dart';
import 'package:sj_presensi_mobile/services/model/response_biodata_karyawan/response_pelatihan_karyawan.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ProfilePage extends StatefulWidget {
  // static const routeName = 'ProfilePage';
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController idController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  GetDataProfileSuccess? data;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) async {
        if (state is ProfileLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is GetDataProfileSuccess) {
          setState(() {
            data = state;
          });
          LoadingDialog.dismissDialog(context);
        } else if (state is ProfileSuccessInBackground) {
          LoadingDialog.dismissDialog(context);
          context.read<ProfileBloc>().add(GetDataProfile());
        } else if (state is LogoutSuccessInBackground) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.success,
              message: state.message,
            ),
          );
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else if (state is ProfileFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
        } else if (state is ProfileFailedUserExpired) {
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
        } else if (state is ProfileFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
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
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.center,
                  child: Text(
                    "Profile",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocBuilder<ProfileBloc, ProfileState>(
                          builder: (context, state) {
                            data =
                                state is GetDataProfileSuccess ? state : null;
                            return Row(
                              children: [
                                ImageFormCustomV2(
                                  imagePath: data?.imagePath,
                                  onImageSelected: (filePath) {
                                    context.read<ProfileBloc>().add(
                                        EditImageProfile(imagePath: filePath));
                                  },
                                  onImageSelectedError: (message) async {
                                    await showDialog(
                                      context: context,
                                      builder: (_) => DialogCustom(
                                        state: DialogCustomItem.error,
                                        message: message,
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(width: 25),
                                Column(
                                  children: [
                                    Text(
                                      data?.name ?? "-",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      data?.name ?? "-",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                        const SizedBox(height: 25),
                        Text(
                          'Data Profil',
                          style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        Divider(
                          color: MyColorsConst.primaryColor.withOpacity(0.1),
                          thickness: 1,
                        ),
                        TextFormCustomV2(
                          labelText: "Biodata",
                          color: MyColorsConst.whiteColor,
                          icon: CupertinoIcons.person_fill,
                          onTap: () async {
                            ///Loading Start
                            LoadingDialog.showLoadingDialog(context);

                            // Mendapatkan biodata dari BiodataBloc
                            BiodataBloc bloc = context.read<BiodataBloc>();
                            bloc.add(GetBiodata());
                            await Future.delayed(const Duration(
                                seconds: 1)); // Menunggu pembaruan blok
                            Biodata bioData =
                                (bloc.state as GetBiodataSuccess).bioData;

                            /// Loading Close
                            LoadingDialog.dismissDialog(context);

                            // Navigasi ke DataDiriPage dengan menyertakan argumen
                            Navigator.of(context).pushNamed(
                              DataDiriPage.routeName,
                              arguments: bioData,
                            );
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Data Pendidikan",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.school_rounded,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DataPendidikanPage.routeName);
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Data Keluarga",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.groups_rounded,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DataKeluargaPage.routeName);
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Data Pelatihan",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.article_rounded,
                          onTap: () async {
                            LoadingDialog.showLoadingDialog(context);
                            ListPelatihanBloc bloc =
                                context.read<ListPelatihanBloc>();
                            bloc.add(GetListPelatihan());
                            await Future.delayed(const Duration(seconds: 1));
                            List<DataPelatihan> dataPelatihan =
                                (bloc.state as ListPelatihanSuccessInBackground)
                                    .dataPelatihan;

                            LoadingDialog.dismissDialog(context);

                            Navigator.of(context)
                                .pushNamed(DataPelatihanPage.routeName, arguments: dataPelatihan);
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Data Prestasi",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.workspace_premium_rounded,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DataPrestasiPage.routeName);
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Data Organisasi",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.language,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DataOrganisasiPage.routeName);
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Data Bahasa",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.translate_rounded,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DataBahasaPage.routeName);
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Data Pengalaman Kerja",
                          color: MyColorsConst.whiteColor,
                          icon: CupertinoIcons.graph_square_fill,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DataPengalamanKerjaPage.routeName);
                          },
                        ),
                        const SizedBox(height: 25),
                        Text(
                          'Akun',
                          style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        Divider(
                          color: MyColorsConst.primaryColor.withOpacity(0.1),
                          thickness: 1,
                        ),
                        TextFormCustomV2(
                          labelText: "Ganti Kata Sandi",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.lock,
                          editable: true,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(ChangePasswordPage.routeName);
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Logout",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.logout_outlined,
                          onTap: () {
                            context.read<ProfileBloc>().add(LogoutProfile(
                                  username: usernameController.text,
                                  password: passwordController.text,
                                ));
                          },
                        ),
                        SizedBox(height: 100.sp)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container CircleAvatarCustom(imageLink) {
    var circleAvatar = Stack(
      children: [
        SvgPicture.asset(
          "assets/icons/bi_people_circle.svg",
          fit: BoxFit.fitWidth,
          colorFilter: ColorFilter.mode(
              MyColorsConst.primaryLightColor, BlendMode.srcIn),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            backgroundColor: MyColorsConst.whiteColor,
            radius: 15,
            child: CircleAvatar(
              backgroundColor: MyColorsConst.greenColor,
              radius: 12,
              child: Icon(Icons.add, color: MyColorsConst.whiteColor, size: 20),
            ),
          ),
        ),
      ],
    );
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: MyColorsConst.shadowColor,
            blurRadius: 2,
            offset: Offset(2, 2),
            spreadRadius: 1,
          ),
        ],
      ),
      // TODO add upload form
      child: circleAvatar,
      // child: imageLink == null
      //     ? circleAvatar
      //     : Image.network("assets/lotties/gif/loading.gif", loadingBuilder: ),
    );
  }
}

class UserData {
  static String username = "";
}
