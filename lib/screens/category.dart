import 'package:flutter/material.dart';
import 'package:project_beta/screens/processing.dart';

import '../constants.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Categories',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                buildCategory('https://hwnews.in/wp-content/uploads/2018/06/SBI-money-960x540.jpg', 'Cash', context),
                buildCategory('https://image.shutterstock.com/image-photo/woman-shopping-dairy-product-grocery-260nw-1543344605.jpg', 'Goods', context),
                buildCategory('https://upload.wikimedia.org/wikipedia/commons/8/8a/ContractLaw.jpg', 'Contract', context),
                buildCategory('https://assets-news-bcdn.dailyhunt.in/cmd/resize/wxh__DHQ_/fetchdata16/images/32/bb/4b/32bb4b8968f3cf679b88b9c1b10b9a8af19cf5e30a8249cbc4f7a91aadf43bfd.jpg', 'Entertainment', context),
              ],
            ),
            Row(
              children: [
                buildCategory('https://image.shutterstock.com/image-vector/general-army-soldier-military-logo-260nw-632341736.jpg', 'General', context),
                buildCategory('https://m.economictimes.com/thumb/msid-69278711,width-1200,height-900,resizemode-4,imgsize-132321/home-insurance-getty.jpg', 'Insurance', context),
                buildCategory('https://ally-marketing.com/wp-content/uploads/2016/07/marketing.jpg', 'Marketing', context),
                buildCategory('https://i1.wp.com/bryghtpath.com/wp-content/uploads/2019/08/Power-Utilities-800x800.png?resize=800%2C600&ssl=1', 'Utilities', context),
              ],
            ),
            Row(
              children: [
                buildCategory('http://www.incharge.org/wp-content/uploads/2019/08/lower-rent.jpg', 'Rent', context),
                buildCategory('https://m.economictimes.com/thumb/msid-77525190,width-1200,height-900,resizemode-4,imgsize-112483/tax.jpg', 'Tax', context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategory(String image, String text, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => Processing()));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(image),
              radius: 32,
            ),
            SizedBox(
              height: 5,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
