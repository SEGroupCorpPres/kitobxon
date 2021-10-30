import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:kitobxon/widgets/button.dart';
import 'package:kitobxon/widgets/login_text_input_field.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  DateTime _dateTime = DateTime.now();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  get onCreditCardWidgetChange => null;

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 200,
                child: CreditCardWidget(
                  cardNumber: 8600312928577846.toString(),
                  expiryDate: '03/23',
                  cardHolderName: 'Urinov Sulaymon',
                  cvvCode: '1563',
                  showBackView: true,
                  onCreditCardWidgetChange:
                      (CreditCardBrand creditCardBrand) {},
                  width: 330,
                  isHolderNameVisible: true,
                  labelCardHolder: 'Aloqa Bank',
                  isChipVisible: true,
                  cardBgColor: const Color(0xFF357AE2),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      loginTextInputField(
                        Icons.school,
                        'Maktab',
                        size.width / 6,
                        size.width / 1.22,
                        false,
                        TextInputType.text,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      loginTextInputField(
                        Icons.group,
                        'Sinf',
                        size.width / 6,
                        size.width / 1.22,
                        false,
                        TextInputType.text,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      loginTextInputField(
                        Icons.account_circle,
                        'To\'liq Ism',
                        size.width / 6,
                        size.width / 1.22,
                        false,
                        TextInputType.text,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 200,),
              button(
                'Summani kiritish',
                size.width / 8,
                size.width / 2.6,
                18,
                    () {
                  HapticFeedback.lightImpact();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Scaffold(
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
                            body: Container(
                              color: Colors.greenAccent,
                              child: Center(child: Text(
                                'To\'lov summasini kiritish'
                              ),
                              ),
                            ),
                          ),
                    ),
                  );
                },
                Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
