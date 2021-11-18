import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

ListTile buildLogsList({String? svgIcon, String? title, String? subtitle, String? trailing, BuildContext? context}){
  return ListTile(
    leading: SvgPicture.asset('assets/icons/svg/' + svgIcon!),
    title: Text(title!, style: Theme.of(context!).textTheme.headline5,),
    subtitle: Text(subtitle!),
    trailing: Text(trailing!),
  );
}