import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../../sections/parent/body.dart';
import '../../widgets/drawer_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context: context, userImg: 'Sulaymon.png'),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: Container(
          padding: EdgeInsets.only(right: 10),
          alignment: Alignment.topRight,
          child: Text(
            'KitobXon',
          ),
        ),
      ),
      body: Body(),
      drawerEnableOpenDragGesture: false,
    );
  }
}
