import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ql_absensi_express_mobile/componens/dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/text_button_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/HRIS/text_form_custom_HRIS1.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/authentication_layout.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/login/bloc/login_bloc.dart';
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
            builder: (_) => DialogCustom(
                state: DialogCustomItem.success, message: state.message),
          );
          Navigator.of(context).pushNamedAndRemoveUntil(
              HomePage.routeName, (Route<dynamic> route) => false);
        } else if (state is LoginFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
                state: DialogCustomItem.error, message: state.message),
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
          TextFormCustomHRIS1(
            labelText: "NIK",
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            validator: MultiValidator([
              RequiredValidator(errorText: "Masukkan NIK yang terdaftar"),
              // EmailValidator(errorText: "Email not Valid!")
            ]),
          ),
          const SizedBox(height: 20),
          TextFormCustomHRIS1(
            labelText: "Password",
            isPassword: true,
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            validator: MultiValidator([
              RequiredValidator(errorText: "Masukkan Password"),
            ]),
          ),
          const SizedBox(height: 40),
          TextButtonCustomV1(
            width: MediaQuery.of(context).size.width,
            height: 50,
            text: "Login",
            textSize: 12,
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
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
