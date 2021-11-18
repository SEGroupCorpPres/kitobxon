import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kitobxon/widgets/button.dart';
import 'package:kitobxon/widgets/login_text_input_field.dart';

class EnConAmountPage extends StatefulWidget {
  const EnConAmountPage({Key? key}) : super(key: key);

  @override
  _EnConAmountPageState createState() => _EnConAmountPageState();
}

class _EnConAmountPageState extends State<EnConAmountPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
            'To\'lov',
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: size.height - 100,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset('assets/images/S.E.Group_logo.png'),
                Text(
                  'Muhammad Abdulloh ibn Sulaymon \n5-B sinf President Maktabi',
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      loginTextInputField(
                        Icons.school,
                        'Summa',
                        size.width / 6,
                        size.width / 1.22,
                        false,
                        TextInputType.number,
                      ),
                      SizedBox(
                        height: 300,
                      ),
                      button(
                        'To\'lash',
                        size.width / 8,
                        size.width / 2.6,
                        18,
                        () {
                          HapticFeedback.lightImpact();
                        },
                        Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
