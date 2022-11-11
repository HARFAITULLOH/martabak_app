import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/menu_controller.dart';
import './components/item_menu.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuC = Get.find<MenuController>();
    Size size = MediaQuery.of(context).size;
    int count = 0;
    return WillPopScope(
      onWillPop: () async {
        Get.closeAllSnackbars();
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14),
              width: size.width - 28,
              height: size.height - 56,
              decoration: BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: Offset(0, 0),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    Get.arguments["text"],
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: size.height - 100,
                    child: ListView(
                      children: <Widget>[
                        ItemMenu(
                          image: Get.arguments["image"],
                          taste: "Keju + Susu",
                          text: Get.arguments["text"],
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
