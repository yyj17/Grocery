import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/pages/SignUpPage.dart';

Row signUpButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Dont have an account?",
          style: TextStyle(color: Colors.black38)),
      TextButton(
        child: const Text('Sign Up',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        onPressed: () => Get.to(() => SignUpPage),
      ),
    ],
  );
}
