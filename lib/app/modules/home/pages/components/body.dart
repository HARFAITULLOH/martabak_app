import 'package:flutter/material.dart';

import './item_menu.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 14),
            ItemMenu(
              image: 'assets/images/grape blue.jpg',
              text: 'Grape Blue',
            ),
            SizedBox(height: 14),
            ItemMenu(
              image: 'assets/images/pandan.jpg',
              text: 'Pandan',
            ),
            SizedBox(height: 14),
            ItemMenu(
              image: 'assets/images/red velvet.jpg',
              text: 'Red Velvet',
            ),
            SizedBox(height: 14),
            ItemMenu(
              image: 'assets/images/taro.jpg',
              text: 'Taro',
            ),
            SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}
