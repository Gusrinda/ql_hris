import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom_HRIS1.dart';
import 'package:sj_presensi_mobile/pages/authentication/authentication_layout.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/bloc/login_bloc.dart';
import 'package:sj_presensi_mobile/pages/home/dashboard.view.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'LoginPage';
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _rememberMe = false;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  // Method untuk load data dari SharedPreferences
  Future<void> _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _rememberMe = prefs.getBool('rememberMe') ?? false;
      if (_rememberMe) {
        usernameController.text = prefs.getString('username') ?? '';
        passwordController.text = prefs.getString('password') ?? '';
      }
    });
  }

  // Method untuk simpan data ke SharedPreferences
  Future<void> _saveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_rememberMe) {
      await prefs.setBool('rememberMe', true);
      await prefs.setString('username', usernameController.text);
      await prefs.setString('password', passwordController.text);
    } else {
      await prefs.setBool('rememberMe', false);
      await prefs.remove('username');
      await prefs.remove('password');
    }
  }

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
              DashboardView.routeName, (Route<dynamic> route) => false);
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
            // keyboardType: TextInputType.emailAddress,
            controller: usernameController,
            validator: MultiValidator([
              RequiredValidator(errorText: "Masukkan NIK yang terdaftar"),
              // EmailValidator(errorText: "Email not Valid!")
            ]),
          ),
          SizedBox(height: 20.sp),
          TextFormCustomHRIS1(
            labelText: "Password",
            isPassword: true,
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            validator: MultiValidator([
              RequiredValidator(errorText: "Masukkan Password"),
            ]),
            textInputAction: TextInputAction.next,
          ),
          SizedBox(height: 5.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Checkbox(
                value: _rememberMe,
                visualDensity: VisualDensity.compact,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                side: const BorderSide(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value ?? false;
                  });
                },
                checkColor: Colors.white, // Checkmark color
              ),
              Text(
                "Ingat Saya",
                style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 20.sp),
          TextButtonCustomV1(
            width: size.width,
            height: 50.sp,
            text: "LOGIN",
            textSize: 13.sp,
            backgroundColor: MyColorsConst.primaryColor,
            textColor: MyColorsConst.whiteColor,
            onPressed: () {
              _handleLogin();
            },
          ),
          SizedBox(height: 40.sp),
        ],
      ),
    );
  }

  void _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      await _saveUserData(); // Simpan data jika login berhasil
      context.read<LoginBloc>().add(
            LoginSubmited(
              username: usernameController.text,
              password: passwordController.text,
              status: true,
            ),
          );
    }
  }
}
