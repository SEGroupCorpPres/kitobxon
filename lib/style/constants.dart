import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'size_config.dart';

const kTitleStyle = TextStyle(
  fontSize: 40.0,
  color: kButtonColor,
  fontWeight: FontWeight.bold,
);
const kBodyColor = Color(0xFF1592E6);
const kPrimaryColor = Color(0xFF007BFF);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kButtonColor = Color(0xFF22EAB5);
const kButtonBackgroundColor = Color(0xFFE4F2F2);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF00FF5B), Color(0xFF0014FF)],
);
const kSuccesColor = Color(0xFF28A745);
const kDangerColor = Color(0xFFDC3545);
const kSecondaryColor = Color(0xFF6C757D);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);
final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
final RegExp emailValidatorRegExp =
    RegExp('r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
const String kPassportNoOrPersonalNumber = 'Iltimos Passport Raqam (Shaxsiy Raqam) ingizni kiriting';
const String kErrorPassportNoOrPersonalNumberOrPassword = 'Passport Raqam (Shaxsiy Raqam) yoki Parol noto\'g\'ri';
const String kPassNullError = 'Iltimos Parolni kiriting';
const String kMatchPassError = 'Passwords don\'t match';
