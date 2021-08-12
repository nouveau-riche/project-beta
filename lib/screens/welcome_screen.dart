import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:project_beta/constants.dart';
import 'package:project_beta/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: mq.height * 0.15,
            ),
            Container(
              height: mq.height * 0.3,
              width: mq.width * 0.7,
              child: Image.asset(
                'assets/welcome.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: mq.height * 0.05,
            ),
            Text(
              'Save when you send, recieve',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.white),
            ),
            Text(
              '& spend abroad',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.white),
            ),
            SizedBox(
              height: mq.height * 0.05,
            ),
            Text(
              'Trusted by over millions customers. Regulated',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              'by the FCA.',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildButton(mq, 'Login', context),
                buildButton(mq, 'Register', context),
              ],
            ),
            SizedBox(
              height: mq.height * 0.04,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(Size mq, String text, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => LogInScreen(),
          ),
        );
      },
      child: Container(
        height: mq.height * 0.055,
        width: mq.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: kSecondaryColor),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 14, color: kSecondaryColor),
          ),
        ),
      ),
    );
  }
}
