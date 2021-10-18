import 'package:flutter/material.dart';

import '../style/constants.dart';

Widget buildChildrenListTile({
  BuildContext? context,
  String? title,
  String? subTitle,
  int? price,
  int? quantity,
  Function()? onTap,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0, bottom: 2, right: 8),
    child: ListTile(
      title: Text(
        title!,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: Icon(Icons.person, size: 40),
      subtitle: Text(subTitle!),
      trailing: Stack(
        children: [
          Container(
            width: 120,
            height: 90,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: kButtonColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.remove_red_eye,
                  size: 25,
                  color: Colors.white,
                ),
                Text(
                  '$price so\'m',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.lime,
              child: Center(
                child: Text(
                  quantity!.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: onTap!,
    ),
  );
}

Widget buildDivider() {
  return Divider(
    height: 2,
    thickness: 1,
    endIndent: 25,
    indent: 73,
    color: kSecondaryColor,
  );
}
