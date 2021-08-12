import 'package:flutter/material.dart';
import 'package:project_beta/screens/category.dart';

import '../constants.dart';

class PayMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: kSecondaryColor,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'How do you want to pay?',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            SizedBox(height: 10,),
            Text(
              'Change payment method',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            buildPaymentMethod('PayNow',
                '0 SGD fee, so you pqy 10 SGD, Should arrive\nin seconds',context),
            Text(
              'Other payment method',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            buildPaymentMethod('Bank Transfer',
                '0 SGD fee, so you pqy 10 SGD, Should arrive\nin seconds',context),
            buildPaymentMethod('Debit Card',
                '0.26 SGD fee, so you pqy 10.26 SGD, Should arrive\nin seconds',context),
            buildPaymentMethod('Credit Card',
                '0.28 SGD fee, so you pqy 10.28 SGD, Should arrive\nin seconds',context),
            buildButton(mq,context),
          ],
        ),
      ),
    );
  }

  Widget buildPaymentMethod(String type, String text,BuildContext context) {
    return GestureDetector(

      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Category()));
      },

      child: Column(
        children: [
          Divider(),
          ListTile(
            leading: Icon(
              Icons.account_balance,
              color: kSecondaryColor,
            ),
            title: Text(type),
            subtitle: Text(text),
          ),
          Divider(),
        ],
      ),
    );
  }

  Widget buildButton(Size mq, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => PayMethod()));
      },
      child: Container(
        height: mq.height * 0.07,
        margin: EdgeInsets.all(10),
        width: mq.width,
        color: kSecondaryColor,
        child: Center(
          child: Text(
            'Cancel',
            style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
