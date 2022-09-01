import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/widgets/forgotPassword.dart';
import 'package:grocery/widgets/loginButton.dart';
import 'package:grocery/widgets/logo.dart';
import 'package:grocery/widgets/signUpButton.dart';
import 'package:grocery/widgets/textField.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Logo("assets/images/grocery-logo1.png"),
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.lobster(
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Your choice, Our responsibility',
                  style: GoogleFonts.lobster(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                formTextField(
                    "Email", Icons.email, false, _emailTextController),
                const SizedBox(
                  height: 15.0,
                ),
                formTextField(
                    "Password", Icons.lock, true, _passwordTextController),
                forgetPassword(context),
                loginButton(context, true, () {}),
                signUpButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
