import 'package:flutter/material.dart';

import '../constants.dart';

class Processing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset(
          'assets/process.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
