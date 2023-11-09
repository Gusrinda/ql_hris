// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:form_field_validator/form_field_validator.dart';
// import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
// import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
// import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
// import 'package:sj_presensi_mobile/componens/text_form_custom_v1.dart';
// import 'package:sj_presensi_mobile/pages/authentication/authentication_layout.dart';
// import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
// import 'package:sj_presensi_mobile/pages/home/profile/bloc/profile_bloc.dart';
// import 'package:sj_presensi_mobile/utils/const.dart';

// class ChangePasswordPage extends StatelessWidget {
//   static const routeName = '/ChangePasswordPage';
//   ChangePasswordPage({super.key});
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController oldPasswordController = TextEditingController();
//   final TextEditingController newPasswordController = TextEditingController();
//   final TextEditingController confirmNewPasswordController =
//       TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<ProfileBloc, ProfileState>(
//       listener: (context, state) async {
//         if (state is ProfileLoading) {
//           LoadingDialog.showLoadingDialog(context);
//         } else if (state is ChangePasswordSuccess) {
//           LoadingDialog.dismissDialog(context);
//           await showDialog(
//             context: context,
//             builder: (_) => DialogCustom(
//               state: DialogCustomItem.success,
//               message: state.message,
//             ),
//           );
//           Navigator.of(context).pop();
//         } else if (state is ChangePasswordFailed) {
//           LoadingDialog.dismissDialog(context);
//           await showDialog(
//             context: context,
//             builder: (_) => DialogCustom(
//               state: DialogCustomItem.error,
//               message: state.message,
//             ),
//           );
//         } else if (state is ProfileFailedUserExpired) {
//           LoadingDialog.dismissDialog(context);
//           await showDialog(
//             context: context,
//             builder: (_) => DialogCustom(
//               state: DialogCustomItem.error,
//               message: state.message,
//             ),
//           );
//           Navigator.of(context)
//               .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
//         } else if (state is ProfileFailedInBackground) {
//           LoadingDialog.dismissDialog(context);
//           Navigator.of(context)
//               .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
//         } else {
//           LoadingDialog.dismissDialog(context);
//         }
//       },
//       child: AuthenticationLayout(
//         formKey: _formKey,
//         layoutState: AuthenticationLayoutState.changePassword,
//         autovalidateMode: AutovalidateMode.onUserInteraction,
//         contents: [
//           TextFormCustomV1(
//             titleText: "Password Lama",
//             hintText: "masukkan password lama",
//             isPassword: true,
//             keyboardType: TextInputType.visiblePassword,
//             controller: oldPasswordController,
//             validator: MultiValidator([
//               RequiredValidator(errorText: "* Required!"),
//             ]),
//           ),
//           const SizedBox(height: 20),
//           TextFormCustomV1(
//             titleText: "Password Baru",
//             hintText: "masukkan password baru",
//             isPassword: true,
//             keyboardType: TextInputType.visiblePassword,
//             controller: newPasswordController,
//             validator: MultiValidator([
//               RequiredValidator(errorText: "* Required!"),
//               MinLengthValidator(8,
//                   errorText: 'password must be at least 8 digits long!'),
//               PatternValidator(r'(?=.*?[#?!@$%^&*-])',
//                   errorText:
//                       'passwords must have at least one special character!')
//             ]),
//           ),
//           const SizedBox(height: 20),
//           TextFormCustomV1(
//             titleText: "Konfirmasi Password Baru",
//             hintText: "masukkan konfirmasi password baru",
//             isPassword: true,
//             keyboardType: TextInputType.visiblePassword,
//             controller: confirmNewPasswordController,
//             validator: (val) => MatchValidator(
//               errorText: 'passwords do not match!',
//             ).validateMatch(
//               val ?? "",
//               newPasswordController.text,
//             ),
//           ),
//           const SizedBox(height: 40),
//           TextButtonCustomV1(
//             text: "Submit",
//             backgroundColor: MyColorsConst.primaryColor,
//             textColor: MyColorsConst.whiteColor,
//             onPressed: () {
//               context.read<ProfileBloc>().add(
//                     EditPasswordProfile(
//                       oldPassword: oldPasswordController.text,
//                       newPassword: newPasswordController.text,
//                       status: _formKey.currentState!.validate(),
//                     ),
//                   );
//             },
//           ),
//           const SizedBox(height: 40),
//         ],
//       ),
//     );
//   }
// }
