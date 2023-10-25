import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/image_form_custom_v2.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v2.dart';
import 'package:sj_presensi_mobile/componens/text_form_custom_v2.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/bloc/profile_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/profile/change_password_page.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ProfilePage extends StatelessWidget {
  // static const routeName = 'ProfilePage';
  ProfilePage({super.key});
  final TextEditingController idController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) async {
        if (state is ProfileLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is GetDataProfileSuccess) {
          idController.text = state.employeeId ?? "";
          emailController.text = state.email ?? "";
          phoneController.text = state.phoneNumber ?? "";
          LoadingDialog.dismissDialog(context);
        } else if (state is ProfileSuccessInBackground) {
          LoadingDialog.dismissDialog(context);
          context.read<ProfileBloc>().add(GetDataProfile());
        } else if (state is LogoutSuccessInBackground) {
          LoadingDialog.dismissDialog(context);
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
        appBar: appBarCustomV1(
          title: "Profile",
          padLeft: 16,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    var data = state is GetDataProfileSuccess ? state : null;
                    return Column(
                      children: [
                        ImageFormCustomV2(
                          imagePath: data?.imagePath,
                          onImageSelected: (filePath) {
                            context
                                .read<ProfileBloc>()
                                .add(EditImageProfile(imagePath: filePath));
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
                        const SizedBox(height: 20),
                        Text(
                          data?.name ?? "-",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 20),
                TextFormCustomV2(
                  hintText: "employee id",
                  color: MyColorsConst.primaryLightColor,
                  icon: Icons.numbers,
                  controller: idController,
                ),
                const SizedBox(height: 16),
                TextFormCustomV2(
                  hintText: "email",
                  color: MyColorsConst.primaryLightColor,
                  icon: Icons.email,
                  controller: emailController,
                ),
                const SizedBox(height: 16),
                TextFormCustomV2(
                  hintText: "nomor telepon",
                  color: MyColorsConst.primaryLightColor,
                  icon: Icons.phone_rounded,
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  editable: true,
                  changeSuffix: true,
                  onPressed: (onEdit) {
                    if (!onEdit) {
                      context.read<ProfileBloc>().add(
                            EditDataProfile(
                              phoneNumber: phoneController.text.trim().isEmpty
                                  ? null
                                  : phoneController.text.trim(),
                            ),
                          );
                    }
                  },
                ),
                const SizedBox(height: 16),
                TextFormCustomV2(
                  hintText: "ganti password",
                  color: MyColorsConst.primaryLightColor,
                  icon: Icons.lock_rounded,
                  editable: true,
                  onPressed: (onEdit) {
                    Navigator.of(context)
                        .pushNamed(ChangePasswordPage.routeName);
                  },
                ),
                const SizedBox(height: 16),
                TextButtonCustomV2(
                  text: "Logout",
                  color: MyColorsConst.redColor,
                  icon: Icons.logout_outlined,
                  onPressed: () {
                    context.read<ProfileBloc>().add(LogoutProfile());
                  },
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
          color: MyColorsConst.primaryLightColor,
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
