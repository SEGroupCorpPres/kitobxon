import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  DateTime _dateTime = DateTime.now();

  get onCreditCardWidgetChange => null;

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
            'To\'lov',
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200,
                child: CreditCardWidget(
                    cardNumber: 8600312928577846.toString(),
                    expiryDate: '03/23',
                    cardHolderName: 'Urinov Sulaymon' ,
                    cvvCode: '1563',
                    showBackView: true,
                    onCreditCardWidgetChange: (CreditCardBrand creditCardBrand){},
                  width: 330,
                  isHolderNameVisible: true,
                  labelCardHolder: 'Aloqa Bank',
                  isChipVisible: true,
                  cardBgColor: const Color(0xFF357AE2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
