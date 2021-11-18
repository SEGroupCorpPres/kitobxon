import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kitobxon/screens/transaction_logs.dart';

import '../../widgets/home_menu_list_tile.dart';
import '../../screens/children.dart';
import '../../screens/payment.dart';
import '../../screens/settings.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      children: [
        buildHomeMenuListTile(
          context: context,
          subTitle: 'Farzandlar',
          svgIcon: 'Boy Student.svg',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => Children(),
            ),
          ),
        ),
        buildDivider(),
        buildHomeMenuListTile(
          context: context,
          subTitle: 'To\'lov',
          svgIcon: 'Calculator.svg',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => Payment(),
            ),
          ),
        ),
        buildDivider(),
        buildHomeMenuListTile(
          context: context,
          subTitle: 'Sozlamalar',
          svgIcon: 'Atom.svg',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => Settings(),
            ),
          ),
        ),
        buildDivider(),
        buildHomeMenuListTile(
          context: context,
          subTitle: 'Hisobot',
          svgIcon: 'Book pen.svg',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => TransactionLogsPage(),
            ),
          ),
        ),
      ],
    );
  }
}
