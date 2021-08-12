import 'package:flutter/material.dart';
import 'package:project_beta/constants.dart';
import 'package:project_beta/widgets/country.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: Icon(
          Icons.notifications_active,
          color: kSecondaryColor,
          size: 30,
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
            color: kSecondaryColor,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Country(
                    text: 'Singapore',
                    image: 'https://wallpapercave.com/wp/wp4214707.jpg',
                  ),
                  Country(
                    text: 'America',
                    image:
                        'https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg',
                  ),
                  Country(
                    text: 'Open',
                    image:
                        'https://preview.pixlr.com/images/800wm/100/1/1001388439.jpg',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.only(left: 14, right: 14, top: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'August 12th, 2021',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      color: Color.fromRGBO(190, 190, 190, 1),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.add),
                        backgroundColor: Color.fromRGBO(190, 190, 190, 1),
                      ),
                      title: Text(
                        'To Your USD balance',
                        style: TextStyle(fontSize: 16),
                      ),
                      subtitle: Text(
                        'Cancelled',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('20 USD'),
                          Text('27.46 SGD'),
                        ],
                      ),
                    ),
                    Divider(
                      color: Color.fromRGBO(190, 190, 190, 1),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildTab(Icons.home_filled, 'Home', true),
                  buildTab(Icons.wallet_membership_sharp, 'Account', false),
                  buildTab(Icons.person, 'Recipients', false),
                  buildTab(Icons.account_balance, 'Account', false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTab(IconData iconData, String text, bool show) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconData,
            color: show ? kSecondaryColor : Colors.black
        ),
        Text(
          text,
          style: TextStyle(color: show ? kSecondaryColor : Colors.black),
        ),
      ],
    );
  }
}
