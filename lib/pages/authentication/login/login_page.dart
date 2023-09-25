import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ql_absensi_express_mobile/componens/dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/text_button_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/text_form_custom_v1.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/authentication_layout.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/forgot_password/forgot_password_page.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/login/bloc/login_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/register/register_page.dart';
import 'package:ql_absensi_express_mobile/pages/home/home_page.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

class LoginPage extends StatelessWidget {
  static const routeName = 'LoginPage';
  LoginPage({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) async {
        if (state is LoginLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is LoginSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(state: DialogCustomItem.success, message: state.message),
          );
          Navigator.of(context).pushNamedAndRemoveUntil(HomePage.routeName, (Route<dynamic> route) => false);
        } else if (state is LoginFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(state: DialogCustomItem.error, message: state.message),
          );
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: AuthenticationLayout(
        formKey: _formKey,
        layoutState: AuthenticationLayoutState.login,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        contents: [
          TextFormCustomV1(
            titleText: "Email",
            hintText: "masukkan email terdaftar",
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            validator: MultiValidator([
              RequiredValidator(errorText: "* Required!"),
              EmailValidator(errorText: "Email not Valid!")
            ]),
          ),
          const SizedBox(height: 20),
          TextFormCustomV1(
            titleText: "Password",
            hintText: "masukkan password terdaftar",
            isPassword: true,
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            validator: MultiValidator([
              RequiredValidator(errorText: "* Required!"),
            ]),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: const Text(
                  "Lupa Password?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: MyColorsConst.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(ForgotPasswordPage.routeName);
                },
              ),
            ],
          ),
          const SizedBox(height: 40),
          TextButtonCustomV1(
            text: "Login",
            backgroundColor: MyColorsConst.primaryColor,
            textColor: MyColorsConst.whiteColor,
            onPressed: () {
              context.read<LoginBloc>().add(
                    LoginSubmited(
                      email: emailController.text,
                      password: passwordController.text,
                      status: _formKey.currentState!.validate(),
                    ),
                  );
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Belum punya akun? ",
                style: TextStyle(
                  color: MyColorsConst.darkColor,
                  fontSize: 12,
                ),
              ),
              InkWell(
                child: const Text(
                  "Daftar",
                  style: TextStyle(
                    color: MyColorsConst.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil(RegisterPage.routeName, (Route<dynamic> route) => false);
                },
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
