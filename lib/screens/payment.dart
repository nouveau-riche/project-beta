import 'package:flutter/material.dart';
import 'package:project_beta/screens/pay_method.dart';

import '../constants.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: kSecondaryColor,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add SGD',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'You gave 0 SGD',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  height: mq.height * 0.08,
                  width: mq.width * 0.65,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kSecondaryColor,
                    ),
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 28),
                    decoration: InputDecoration(
                      labelText: 'Add',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: mq.height * 0.08,
                  color: kPrimaryColor,
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        child: Image.network(
                            'https://wallpapercave.com/wp/wp4214707.jpg'),
                      ),
                      Text(
                        'SGD',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: kSecondaryColor,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Paying with',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  child: Image.network(
                      'https://wallpapercave.com/wp/wp4214707.jpg'),
                ),
                Text(
                  'SGD',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            Divider(),
            Spacer(),
            buildButton(mq, context),
            SizedBox(
              height: 20,
            ),
          ],
        ),
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
            'Continue',
            style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
