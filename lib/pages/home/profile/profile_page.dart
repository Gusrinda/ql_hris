import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/image_form_custom_v2.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_form_custom_v2.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/bloc/profile_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/data_bahasa_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_bahasa/list_bahasa_bloc/list_bahasa_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/biodata/biodata_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/data_diri_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/data_keluarga_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_keluarga/list_keluarga_bloc/list_keluarga_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/data_organisasi_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_organisasi/list_organisas_bloc/list_organisasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/data_pelatihan_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pelatihan/list_pelatihan_bloc/list_pelatihan_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pendidikan/data_pendidikan.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/data_pengalaman_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_pengalaman_kerja/list_pengalaman_bloc/list_pengalaman_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/data_prestasi.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_prestasi/list_prestasi_bloc/list_prestasi_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/password_change.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ProfilePage extends StatefulWidget {
  // static const routeName = 'ProfilePage';
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  final TextEditingController idController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  GetDataProfileSuccess? data;

  late String appVersion = "Loading...";

  @override
  void initState() {
    super.initState();
    _onRefresh();
    loadData();
    getVersion();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileBloc>().add(GetDataProfile());
    });
  }

  void loadData() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileBloc>().add(GetDataProfile());
    });
  }

  Future<void> _onRefresh() async {
    try {
      // Dispatch the CheckInOutEvent to refresh the data
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<ProfileBloc>().add(GetDataProfile());
      });
      // Add any additional refreshing logic here if needed
      await Future.delayed(Duration(seconds: 1));
    } catch (error) {
      print('Refresh Error: $error');
    }
  }

  Future<void> getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final String? pubspecVersion = packageInfo.version;
    print("Current App Version From pubspec.yaml: $pubspecVersion");

    String staticPubspecVersion = "5.6.1";

    setState(() {
      appVersion = pubspecVersion ?? staticPubspecVersion;
    });
  }

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
      child: RefreshIndicator(
        displacement: 50,
        key: _refreshIndicatorKey,
        onRefresh: _onRefresh,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                data = state is GetDataProfileSuccess ? state : null;
                return Container(
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
                          padding: EdgeInsets.all(20.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
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
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data?.name ?? "-",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Username: ',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 10.sp,
                                                  color: MyColorsConst
                                                      .lightDarkColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              TextSpan(
                                                text: data?.dataProfile?.username,
                                                style: GoogleFonts.poppins(
                                                  fontStyle: FontStyle.italic,
                                                  fontSize: 12.sp,
                                                  color: MyColorsConst.darkColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Atasan: ',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 10.sp,
                                                  color: MyColorsConst
                                                      .lightDarkColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              TextSpan(
                                                text: data?.dataProfile?.atasan,
                                                style: GoogleFonts.poppins(
                                                  fontSize: 10.sp,
                                                  color: MyColorsConst.darkColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
                                color:
                                    MyColorsConst.primaryColor.withOpacity(0.1),
                                thickness: 1,
                              ),
                              TextFormCustomV2(
                                labelText: "Biodata",
                                color: MyColorsConst.whiteColor,
                                icon: CupertinoIcons.person_fill,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                        create: (context) => BiodataBloc(),
                                        child: DataDiriPage(),
                                      ),
                                    ),
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
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                        create: (context) => ListKeluargaBloc(),
                                        child: DataKeluargaPage(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              TextFormCustomV2(
                                labelText: "Data Pelatihan",
                                color: MyColorsConst.whiteColor,
                                icon: Icons.article_rounded,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                        create: (context) =>
                                            ListPelatihanBloc(),
                                        child: DataPelatihanPage(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              TextFormCustomV2(
                                labelText: "Data Prestasi",
                                color: MyColorsConst.whiteColor,
                                icon: Icons.workspace_premium_rounded,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                        create: (context) => ListPrestasiBloc(),
                                        child: DataPrestasiPage(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              TextFormCustomV2(
                                labelText: "Data Organisasi",
                                color: MyColorsConst.whiteColor,
                                icon: Icons.language,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                        create: (context) =>
                                            ListOrganisasiBloc(),
                                        child: DataOrganisasiPage(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              TextFormCustomV2(
                                labelText: "Data Bahasa",
                                color: MyColorsConst.whiteColor,
                                icon: Icons.translate_rounded,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                        create: (context) => ListBahasaBloc(),
                                        child: DataBahasaPage(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              TextFormCustomV2(
                                labelText: "Data Pengalaman Kerja",
                                color: MyColorsConst.whiteColor,
                                icon: CupertinoIcons.graph_square_fill,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                        create: (context) =>
                                            ListPengalamanBloc(),
                                        child: DataPengalamanKerjaPage(),
                                      ),
                                    ),
                                  );
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
                                color:
                                    MyColorsConst.primaryColor.withOpacity(0.1),
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
                                  onTap: state is ProfileLoading
                                      ? null
                                      : () {
                                          showDialog(
                                            context: context,
                                            builder: (_) => DialogCustom(
                                              state: DialogCustomItem.confirm,
                                              message: "Yakin Ingin Logout?",
                                              durationInSec: 5,
                                              onContinue: () => context
                                                  .read<ProfileBloc>()
                                                  .add(LogoutProfile(
                                                    username:
                                                        usernameController.text,
                                                    password:
                                                        passwordController.text,
                                                  )),
                                            ),
                                          );
                                        }),
                              SizedBox(height: 30.sp),
                              Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.info_circle_fill,
                                    color: Colors.blue.shade600,
                                    size: 13.sp,
                                  ),
                                  const SizedBox(width: 3),
                                  Text(
                                    'Informasi Aplikasi',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color:
                                    MyColorsConst.primaryColor.withOpacity(0.1),
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Version",
                                    style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: MyColorsConst.lightDarkColor,
                                    ),
                                  ),
                                  Text(
                                    appVersion,
                                    style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600,
                                      color: MyColorsConst.darkColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 100.sp)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
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
