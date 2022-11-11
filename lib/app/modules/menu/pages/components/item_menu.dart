import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/menu_controller.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    Key? key,
    required this.taste,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String taste;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final menuC = Get.find<MenuController>();
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(229, 229, 229, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        horizontalTitleGap: 8,
        dense: true,
        visualDensity: VisualDensity(vertical: -2),
        title: Text(
          text,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          taste,
          style: TextStyle(
            fontSize: 11,
          ),
        ),
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(
            image,
          ),
        ),
        trailing: Wrap(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                menuC.add(text, image, taste);

                if (Get.isSnackbarOpen) {
                  Get.closeCurrentSnackbar();
                }

                Get.rawSnackbar(
                  message: "Item telah ditambah",
                  duration: Duration(seconds: 2),
                  animationDuration: Duration(milliseconds: 1),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(35, 175, 0, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
