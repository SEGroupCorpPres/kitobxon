import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kitobxon/screens/login/login_screen.dart';

import 'package:kitobxon/widgets/button.dart';
import 'package:kitobxon/widgets/login_text_input_field.dart';

import './login/behavior.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen({Key? key}) : super(key: key);

  @override
  _PasswordRecoveryScreenState createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<double> _transform;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    _opacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    )..addListener(() {
      setState(() {});
    });

    _transform = Tween<double>(begin: 2, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF22EAB5),
                    Color(0xFF18A47F),
                  ],
                ),
              ),
              child: Opacity(
                opacity: _opacity.value,
                child: Transform.scale(
                  scale: _transform.value,
                  child: Container(
                    width: size.width * .9,
                    height: size.width * 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 90,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(),
                        Text(
                          'Parolni tiklash',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(.7),
                          ),
                        ),
                        SizedBox(),
                        loginTextInputField(
                          Icons.account_circle_outlined,
                          'Telefon raqam',
                          size.width / 8,
                          size.width / 1.22,
                          false,
                          TextInputType.number,
                        ),
                        loginTextInputField(
                          Icons.lock_outline,
                          'Yangi Parol',
                          size.width / 8,
                          size.width / 1.22,
                          true,
                          TextInputType.text,
                        ),
                        loginTextInputField(
                          Icons.lock_outline,
                          'Yangi parolni tasdiqlash',
                          size.width / 8,
                          size.width / 1.22,
                          true,
                          TextInputType.text,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            button(
                              'Tasdiqlash',
                              size.width / 8,
                              size.width / 2.6,
                                  18,
                                  () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            LogInScreen(),
                                      ),
                                    );
                                HapticFeedback.lightImpact();
                                Fluttertoast.showToast(
                                    msg: 'Tasdiqlash tugmasi bosildi');
                              },
                              Theme.of(context).primaryColor,
                            ),
                          ],
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
