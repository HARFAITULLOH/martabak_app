import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './components/on going/on_going_item.dart';
import './components/done/done_item.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        Get.closeCurrentSnackbar();
        // Get.back(result: 3);
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: Color.fromARGB(255, 255, 255, 255),
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OnGoingItem(size: size),
                DoneItem(size: size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
