import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget loginTextInputField(
    IconData? icon,
    String? hintText,
    double? sizeHeight,
    double? sizeWidth,
    bool? isPassword,
    TextInputType? keyboardType,
    ) {
  return Container(
    height: sizeHeight!,
    width: sizeWidth!,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(.05),
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
      style: TextStyle(color: Colors.black.withOpacity(.8)),
      obscureText: isPassword!,
      keyboardType: keyboardType!,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon!,
          color: Colors.black.withOpacity(.7),
        ),
        border: InputBorder.none,
        hintMaxLines: 1,
        hintText: hintText!,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.black.withOpacity(.5),
        ),
      ),
    ),
  );
}