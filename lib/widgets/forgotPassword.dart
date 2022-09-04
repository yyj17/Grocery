import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/pages/ResetPassword.dart';

Widget forgetPassword(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 35.0,
    alignment: Alignment.bottomRight,
    child: TextButton(
      child: const Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
        textAlign: TextAlign.right,
      ),
      onPressed: () => Get.to(() => resetPassword()),
    ),
  );
}
