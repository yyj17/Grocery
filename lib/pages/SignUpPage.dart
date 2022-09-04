import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:grocery/pages/SignInPage.dart';
import 'package:grocery/widgets/textField.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black38),
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black38),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 15.0,
              ),
              formTextField(
                  "Username", Icons.person, false, _nameTextController),
              const SizedBox(
                height: 15.0,
              ),
              formTextField("Email", Icons.mail, false, _emailTextController),
              const SizedBox(
                height: 15.0,
              ),
              formTextField(
                  "Password", Icons.lock, true, _passwordextController),
              const SizedBox(
                height: 15.0,
              ),
              signUpButton(context, () {}),
            ],
          ),
        ),
      ),
    );
  }
}

Container signUpButton(BuildContext context, Function onPressed) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50.0,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () => Get.to(() => SignInPage()),
      child: Text(
        'Sign Up',
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black;
            }
            return Colors.red.withOpacity(0.7);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}
