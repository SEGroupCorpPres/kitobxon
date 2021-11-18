import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kitobxon/widgets/child_books_list_tile.dart';
import 'package:kitobxon/widgets/logs_list.dart';

class TransactionLogsPage extends StatefulWidget {
  const TransactionLogsPage({Key? key}) : super(key: key);

  @override
  _TransactionLogsPageState createState() => _TransactionLogsPageState();
}

class _TransactionLogsPageState extends State<TransactionLogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: Container(
          padding: EdgeInsets.only(right: 10),
          alignment: Alignment.topRight,
          child: Text(
            'O\'tkazmalar',
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            buildLogsList(
              context: context,
              svgIcon: 'Notes.svg',
              title: 'Kitob to\'lovi',
              subtitle: 'Muhammad Abdulloh ibn Sulaymon',
              trailing: '40000 so\'m',
            ),
            buildDivider(),
          ],
        ),
      ),
    );
  }
}
