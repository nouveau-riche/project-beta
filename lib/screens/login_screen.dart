import 'package:flutter/material.dart';
import 'package:project_beta/screens/home_screen.dart';

import '../constants.dart';

class LogInScreen extends StatelessWidget {
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
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Log in',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27),
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
            buildEmailField(mq, 'Email'),
            buildPasswordField(mq, 'Password'),
            buildButton(mq, context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: kSecondaryColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Or log in with',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black26,
                  ),
                ),
              ],
            ),
            Container(
              width: mq.width,
              margin: EdgeInsets.all(10),
              height: mq.height * 0.05,
              child: Image.asset(
                'assets/signin.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEmailField(Size mq, String text) {
    return Container(
      width: mq.width,
      margin: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          labelText: text,
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(190, 190, 190, 1),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kSecondaryColor)),
        ),
      ),
    );
  }

  Widget buildPasswordField(Size mq, String text) {
    return Container(
      width: mq.width,
      margin: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          labelText: text,
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(190, 190, 190, 1),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kSecondaryColor)),
        ),
      ),
    );
  }

  Widget buildButton(Size mq, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => HomeScreen()));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: mq.width,
        height: mq.height * 0.06,
        color: kSecondaryColor,
        child: Center(
          child: Text(
            'Log in',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
