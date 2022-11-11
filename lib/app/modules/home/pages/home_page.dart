import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:martabak_app/app/modules/home/pages/components/body.dart';

import '../../menu/pages/menu_page.dart';
import '../controllers/home_controller.dart';
import './components/floating_action_button.dart';
import '../../menu/controllers/menu_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final menuC = Get.put(MenuController());
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        menuC.saveData();
        return true;
      },
      child: Scaffold(
        body: Body(),
        floatingActionButton: FloatActionButton(),
      ),
    );
  }
}
