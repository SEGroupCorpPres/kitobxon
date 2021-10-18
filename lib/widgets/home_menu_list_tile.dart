import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../style/constants.dart';

Widget buildHomeMenuListTile({
  BuildContext? context,
  String? subTitle,
  String? svgIcon,
  Function()? onTap,
}) {
  return Container(
    child: Card(
      child: ListTile(
        subtitle: Text(
          subTitle!,
          style: TextStyle(
            color: kButtonColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          textAlign: TextAlign.start,
        ),
        leading: SvgPicture.asset('assets/icons/svg/' + svgIcon!, fit: BoxFit.contain,),
        tileColor: Color(0xFFE4F2F2),
        onTap: onTap!,
      ),
    ),
  );
}

Widget buildDivider() {
  return Divider(
    height: 10,
    color: kButtonColor,
    indent: 10,
    endIndent: 10,
    thickness: 1,
  );
}
