import 'package:flutter/material.dart';

import 'package:get/get.dart';

import './components/on_going_item.dart';
import './components/done_item.dart';
import '../controllers/list_controller.dart';

class ListPage extends GetView<ListController> {
  const ListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
    );
  }
}
