import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:kitobxon/style/constants.dart';

import '../widgets/button.dart';
import '../widgets/child_books_list_tile.dart';

class BooksOfChild extends StatelessWidget {
  const BooksOfChild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
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
            'Muhammad Abdulloh ibn Sulaymon',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
          buildBooksListTile(
              context: context,
              icon: 'Library.svg',
              title: 'Matematika',
              subTitle: '5-siflar uchun',
              priceOfBook: 7000,
              onTap: () {}),
          buildDivider(),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          button(
            'To\'lash',
            50,
            size.width / 2,
            30,
            () {},
            Theme.of(context).primaryColor,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: kDangerColor,
              ),
              height: 50,
              alignment: Alignment.center,
              child: Text(
                '105000 so\'m',
                style: TextStyle(color: Colors.white, fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
