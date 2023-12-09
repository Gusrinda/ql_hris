import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/image_form_custom_v2.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_form_custom_v2.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/bloc/profile_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/data_bahasa_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/data_diri_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/data_keluarga_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/data_organisasi_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/data_pelatihan_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/data_pendidikan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/data_pengalaman_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/data_prestasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/password_change.dart';
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
          // print('apa didalam ${data}');
          // idController.text = state.username ?? "";
          // emailController.text = state.email ?? "";
          // phoneController.text = state.phoneNumber ?? "";
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
                  Color(0xFF5EB5EE),
                  Color(0xFF6F7BF7),
                  // Color(0xFF00CCFF),
                ],
                stops: [0.0, 0.1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  child: const Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
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
                                        EditImageProfile(
                                            imagePath: filePath));
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
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      data?.name ?? "-",
                                      style: const TextStyle(
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
                        const Text(
                          'Data Profil',
                          style: TextStyle(
                            fontSize: 12,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        const Divider(
                          color: Color(0xFFDDDDDD),
                          thickness: 1,
                        ),
                        TextFormCustomV2(
                          labelText: "Data Diri",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.person,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DataDiriPage.routeName);
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Data Pendidikan",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.school,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DataPendidikanPage.routeName);
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Data Keluarga",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.groups,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DataKeluargaPage.routeName);
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Data Pelatihan",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.article,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DataPelatihanPage.routeName);
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Data Prestasi",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.workspace_premium_outlined,
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
                          icon: Icons.abc,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DataBahasaPage.routeName);
                          },
                        ),
                        TextFormCustomV2(
                          labelText: "Data Pengalaman Kerja",
                          color: MyColorsConst.whiteColor,
                          icon: Icons.data_exploration_rounded,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DataPengalamanKerjaPage.routeName);
                          },
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          'Akun',
                          style: TextStyle(
                            fontSize: 12,
                            color: MyColorsConst.lightDarkColor,
                          ),
                        ),
                        const Divider(
                          color: Color(0xFFDDDDDD),
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
                        // TextButtonCustomV1(
                        //   height: 45,
                        //   text: "Logout",
                        //   backgroundColor: Color.fromARGB(255, 236, 48, 35),
                        //   textColor: MyColorsConst.whiteColor,
                        //   onPressed: () {
                        //     context.read<ProfileBloc>().add(LogoutProfile(
                        //           username: usernameController.text,
                        //           password: passwordController.text,
                        //         ));
                        //   },
                        // ),
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
