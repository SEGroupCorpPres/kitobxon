import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kitobxon/screens/children.dart';
import 'package:kitobxon/screens/payment.dart';
import 'package:kitobxon/screens/settings.dart';
import 'package:kitobxon/screens/transaction_logs.dart';
import 'package:kitobxon/style/constants.dart';
import 'package:kitobxon/widgets/drawer_menu_list_tile.dart';

Widget buildDrawer({context, userImg}) {
  return AnimatedContainer(
    duration: Duration(seconds: 3),
    curve: Curves.slowMiddle,
    child: Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, top: 10),
            color: kButtonColor,
            height: 230,
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: CircleAvatar(
                    radius: 45,
                    // backgroundImage: AssetImage('assets/images/$userImg'),
                    backgroundColor: Colors.green,
                  ),
                  backgroundColor: Colors.white,
                  radius: 47,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sulaymon O\'rinov',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Vasiy (Ota-Ona)',
                    style: Theme.of(context).textTheme.headline6),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              buildDrawerMenuListTile(
                  icon: Icons.home,
                  title: 'Bosh saxifa',
                  onTap: () => Navigator.of(context).pop()),
              buildDrawerMenuListTile(
                icon: Icons.people,
                title: 'Farzandlar',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Children(),
                  ),
                ),
              ),
              buildDrawerMenuListTile(
                icon: Icons.payment,
                title: 'To\'lov',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Payment(),
                  ),
                ),
              ),
              buildDrawerMenuListTile(
                icon: Icons.notes,
                title: 'O\'tkazmalar',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => TransactionLogsPage(),
                  ),
                ),
              ),
              buildDrawerMenuListTile(
                icon: Icons.settings,
                title: 'Sozlamalar',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Settings(),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              buildDrawerMenuListTile(
                  icon: Icons.info, title: 'Ilova haqida', onTap: () {}),
              buildDrawerMenuListTile(
                  icon: Icons.help, title: 'Yordam', onTap: () {}),
            ],
          ),
        ],
      ),
    ),
  );
}
