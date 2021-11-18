import 'package:flutter/material.dart';
import 'package:kitobxon/style/constants.dart';

ListTile buildDrawerMenuListTile({icon, title, onTap}) {
  return ListTile(
    leading: Icon(
      icon,
      size: 25,
    ),
    title: Text(
      title,
      style: TextStyle(
        color: kButtonColor,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      textAlign: TextAlign.start,
    ),
    onTap: onTap,
  );
}
