import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget button(
    String string,
    double? sizeHeight,
    double? sizeWidth,
    double? fontSize,
    VoidCallback voidCallback,
    Color? theme,
    ) {
  return InkWell(
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    onTap: voidCallback,
    child: Container(
      height: sizeHeight!,
      width: sizeWidth!,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme!,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        string,
        style: TextStyle(
          fontSize: fontSize!,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}