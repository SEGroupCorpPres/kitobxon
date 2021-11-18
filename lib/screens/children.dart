import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/children_page_list_tile.dart';
import 'books_of_child.dart';

class Children extends StatefulWidget {
  const Children({Key? key}) : super(key: key);

  @override
  State<Children> createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {
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
            'Farzandlar',
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          buildChildrenListTile(
            context: context,
            title: 'Muhammad Abdulloh ibn Sulaymon',
            subTitle: '6-B sinf \nPresident Maktabi',
            price: 40000,
            quantity: 16,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => BooksOfChild(),
                ),
              );
            },
          ),
          buildDivider(),
          buildChildrenListTile(
            context: context,
            title: 'Muhammad Abdurohman ibn Sulaymon',
            subTitle: '8-B sinf \nPresident Maktabi',
            price: 40000,
            quantity: 16,
            onTap: () {Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => BooksOfChild(),
              ),
            );},
          ),
          buildDivider(),
          buildChildrenListTile(
            context: context,
            title: 'Muhammad Abdurahim ibn Sulaymon',
            subTitle: '5-B sinf \nPresident Maktabi',
            price: 40000,
            quantity: 16,
            onTap: () {Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => BooksOfChild(),
              ),
            );},
          ),
          buildDivider(),
          buildChildrenListTile(
            context: context,
            title: 'Maryam bintu Sulaymon',
            subTitle: '3-B sinf \nPresident Maktabi',
            price: 40000,
            quantity: 16,
            onTap: () {Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => BooksOfChild(),
              ),
            );},
          ),
          buildDivider(),
          buildChildrenListTile(
            context: context,
            title: 'Osiyo bintu Sulaymon',
            subTitle: '9-B sinf \nPresident Maktabi',
            price: 40000,
            quantity: 16,
            onTap: () {Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => BooksOfChild(),
              ),
            );},
          ),
          buildDivider(),
          buildChildrenListTile(
            context: context,
            title: 'Hadicha bintu Sulaymon',
            subTitle: '7-B sinf \nPresident Maktabi',
            price: 40000,
            quantity: 16,
            onTap: () {Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => BooksOfChild(),
              ),
            );},
          ),
          buildDivider(),
          buildChildrenListTile(
            context: context,
            title: 'Fotima bintu Sulaymon',
            subTitle: '2-B sinf \nPresident Maktabi',
            price: 40000,
            quantity: 16,
            onTap: () {Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => BooksOfChild(),
              ),
            );},
          ),
          buildDivider(),
        ],
      ),
    );
  }
}
