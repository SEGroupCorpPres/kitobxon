import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' as style;

import '../style/constants.dart';

Widget buildBooksListTile({
  BuildContext? context,
  String? icon,
  String? title,
  String? subTitle,
  int? priceOfBook,
  Function()? onTap,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0, bottom: 2, right: 8),
    child: ListTile(
      title: Text(
        title!,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: style.SvgPicture.asset('assets/icons/svg/' + icon!),
      subtitle: Text(subTitle!),
      trailing: Text('$priceOfBook' + 'so\'m'),
      onTap: onTap!,
    ),
  );
}

Widget buildDivider() {
  return Divider(
    height: 2,
    thickness: 1,
    endIndent: 25,
    indent: 98,
    color: kSecondaryColor,
  );
}
