import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ql_absensi_express_mobile/componens/dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/text_button_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/text_form_custom_v1.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/authentication_layout.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/login/login_page.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/register/bloc/register_bloc.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

class RegisterPage extends StatelessWidget {
  static const routeName = 'RegisterPage';
  RegisterPage({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) async {
        if (state is RegisterLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is RegisterSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
                state: DialogCustomItem.success, message: state.message),
          );
          Navigator.of(context).pushNamedAndRemoveUntil(
              LoginPage.routeName, (Route<dynamic> route) => false);
        } else if (state is RegisterFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
                state: DialogCustomItem.error, message: state.message),
          );
        }
      },
      child: AuthenticationLayout(
        formKey: _formKey,
        layoutState: AuthenticationLayoutState.register,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        contents: [
          TextFormCustomV1(
            titleText: "Nama Lengkap",
            hintText: "masukkan nama lengkap",
            controller: nameController,
            keyboardType: TextInputType.name,
            validator: MultiValidator([
              RequiredValidator(errorText: "* Required!"),
            ]),
          ),
          const SizedBox(height: 20),
          TextFormCustomV1(
            titleText: "Email",
            hintText: "masukkan email aktif",
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            validator: MultiValidator([
              RequiredValidator(errorText: "* Required!"),
              EmailValidator(errorText: "email not valid!")
            ]),
          ),
          const SizedBox(height: 20),
          TextFormCustomV1(
            titleText: "Password",
            hintText: "masukkan password",
            isPassword: true,
            keyboardType: TextInputType.visiblePassword,
            controller: passwordController,
            validator: MultiValidator([
              RequiredValidator(errorText: "* Required!"),
              MinLengthValidator(8,
                  errorText: 'password must be at least 8 digits long!'),
              PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                  errorText:
                      'passwords must have at least one special character!')
            ]),
          ),
          const SizedBox(height: 20),
          TextFormCustomV1(
            titleText: "Konfirmasi Password",
            hintText: "masukkan konfirmasi password",
            isPassword: true,
            controller: confirmpasswordController,
            validator: (val) => MatchValidator(
              errorText: 'passwords do not match!',
            ).validateMatch(
              val ?? "",
              passwordController.text,
            ),
          ),
          const SizedBox(height: 40),
          TextButtonCustomV1(
            text: "Submit",
            backgroundColor: MyColorsConst.primaryColor,
            textColor: MyColorsConst.whiteColor,
            onPressed: () {
              context.read<RegisterBloc>().add(
                    RegisterSubmited(
                      email: emailController.text,
                      password: passwordController.text,
                      name: nameController.text,
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
                "Sudah punya akun? ",
                style: TextStyle(
                  color: MyColorsConst.darkColor,
                  fontSize: 12,
                ),
              ),
              InkWell(
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: MyColorsConst.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      LoginPage.routeName, (Route<dynamic> route) => false);
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
