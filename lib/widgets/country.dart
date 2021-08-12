import 'package:flutter/material.dart';
import 'package:project_beta/screens/payment.dart';

class Country extends StatelessWidget {
  final String text;
  final String image;

  Country({this.text, this.image});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => Payment()));
      },
      child: Container(
        height: mq.height * 0.15,
        width: mq.width * 0.32,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(image),
            ),
            SizedBox(height: 10,),
            Text(
              '0.0',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            SizedBox(height: 20,),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(150, 150, 150, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
