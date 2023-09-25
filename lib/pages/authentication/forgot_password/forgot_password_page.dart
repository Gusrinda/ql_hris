import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:ql_absensi_express_mobile/componens/dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/text_button_custom_v1.dart';
import 'package:ql_absensi_express_mobile/componens/text_form_custom_v1.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/authentication_layout.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:ql_absensi_express_mobile/pages/authentication/forgot_password/change_pass_notification_page.dart';
import 'package:ql_absensi_express_mobile/utils/const.dart';

class ForgotPasswordPage extends StatelessWidget {
  static const routeName = '/ForgotPasswordPage';
  ForgotPasswordPage({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) async {
        if (state is ForgotPasswordLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is ForgotPasswordSuccess) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(ChangePassNotificationPage.routeName, (Route<dynamic> route) => false);
        } else if (state is ForgotPasswordFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(state: DialogCustomItem.error, message: state.message),
          );
        }
      },
      child: AuthenticationLayout(
        formKey: _formKey,
        layoutState: AuthenticationLayoutState.forgotPassword,
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
          const SizedBox(height: 40),
          TextButtonCustomV1(
            text: "Submit",
            backgroundColor: MyColorsConst.primaryColor,
            textColor: MyColorsConst.whiteColor,
            onPressed: () {
              context.read<ForgotPasswordBloc>().add(
                    ForgotPasswordSubmited(
                      email: emailController.text,
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
