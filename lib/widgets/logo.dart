import 'package:flutter/cupertino.dart';

Image Logo(String logo) {
  return Image.asset(
    logo,
    fit: BoxFit.fitWidth,
    width: 300.0,
    height: 300.0,
  );
}
