import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_form_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/home/profile/bloc/profile_bloc.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class ChangePasswordPage extends StatelessWidget {
  static const routeName = '/ChangePasswordPage';
  ChangePasswordPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController oldPasswordController = TextEditingController();

  final TextEditingController newPasswordController = TextEditingController();

  final TextEditingController confirmNewPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) async {
        if (state is ProfileLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ChangePasswordSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.success,
              message: state.message,
            ),
          );
          Navigator.of(context).pop();
        } else if (state is ChangePasswordFailed) {
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
        // appBar: appBarCustomV1(
        //   title: "Ganti Password",
        //   padLeft: 8,
        // ),
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
                padding: EdgeInsets.only(left: 5.0.sp),
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
                      width: size.width * 0.5 / 2.5,
                    ),
                    Expanded(
                      child: Text(
                        "Ganti Password",
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
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 24.sp, vertical: 16.sp),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          children: [
                            SizedBox(height: 10.sp),
                            Center(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  "assets/images/change_password.png",
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Text(
                              'Password barumu harus berbeda dari password yang digunakan sebelumnya',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: MyColorsConst.darkColor,
                              ),
                            ),
                            // SizedBox(height: 30.sp),
                            // TextFormCustomV1(
                            //   titleText: "Password Lama",
                            //   hintText: "Masukkan password lama",
                            //   isPassword: true,
                            //   keyboardType: TextInputType.visiblePassword,
                            //   controller: oldPasswordController,
                            //   validator: MultiValidator([
                            //     RequiredValidator(errorText: "* Required!"),
                            //   ]),
                            // ),
                            SizedBox(height: 20.sp),
                            TextFormCustomV1(
                              titleText: "Password Baru",
                              hintText: "Masukkan password baru",
                              isPassword: true,
                              keyboardType: TextInputType.visiblePassword,
                              controller: newPasswordController,
                              validator: MultiValidator([
                                RequiredValidator(errorText: "* Required!"),
                                // MinLengthValidator(8,
                                //     errorText:
                                //         'password must be at least 8 digits long!'),
                                // PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                                //     errorText:
                                //         'passwords must have at least one special character!')
                              ]),
                            ),
                            SizedBox(height: 20.sp),
                            TextFormCustomV1(
                              titleText: "Konfirmasi Password Baru",
                              hintText: "Konfirmasi password baru",
                              isPassword: true,
                              keyboardType: TextInputType.visiblePassword,
                              controller: confirmNewPasswordController,
                              validator: (val) => MatchValidator(
                                errorText: 'passwords do not match!',
                              ).validateMatch(
                                val ?? "",
                                newPasswordController.text,
                              ),
                            ),
                            SizedBox(height: 40.sp),
                            TextButtonCustomV1(
                              text: "Ganti Password",
                              height: 50.sp,
                              backgroundColor:
                                  MyColorsConst.primaryColor.withOpacity(0.1),
                              textColor: MyColorsConst.primaryColor,
                              onPressed: () {
                                print(
                                    'password lama: ${newPasswordController}');
                                print(
                                    'password baru: ${confirmNewPasswordController}');
                                context.read<ProfileBloc>().add(
                                      EditPasswordProfile(
                                        oldPassword: newPasswordController.text,
                                        newPassword:
                                            confirmNewPasswordController.text,
                                        status:
                                            _formKey.currentState!.validate(),
                                      ),
                                    );
                              },
                            ),
                          ],
                        ),
                      ),
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
