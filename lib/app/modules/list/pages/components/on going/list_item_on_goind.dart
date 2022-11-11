import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/models/product_model.dart';
import '../../../../menu/controllers/menu_controller.dart';

class ListItemOnGoing extends StatelessWidget {
  const ListItemOnGoing({
    Key? key,
    required this.data,
    required this.sizedBoxHeight,
  }) : super(key: key);

  final Product data;
  final double sizedBoxHeight;

  @override
  Widget build(BuildContext context) {
    final menuC = Get.find<MenuController>();
    return Column(
      children: [
        SizedBox(height: sizedBoxHeight),
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(229, 229, 229, 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            horizontalTitleGap: 8,
            dense: true,
            visualDensity: VisualDensity(vertical: -2),
            title: Text(
              data.name,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              data.taste,
              style: TextStyle(
                fontSize: 11,
              ),
            ),
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                data.image,
              ),
            ),
            trailing: Wrap(
              spacing: 12, // space between two icons
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    menuC.delete(data.id);

                    if (Get.isSnackbarOpen) {
                      Get.closeCurrentSnackbar();
                    }

                    Get.rawSnackbar(
                      message: "Item telah di hapus dari list on going",
                      duration: Duration(seconds: 2),
                      animationDuration: Duration(milliseconds: 1),
                      // margin: EdgeInsets.only(right: 14, left: 14, bottom: 14),
                      // borderRadius: 20,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 3,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(226, 9, 9, 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      "Cencel",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    menuC.done(data.id);

                    if (Get.isSnackbarOpen) {
                      Get.closeCurrentSnackbar();
                    }

                    Get.rawSnackbar(
                      message: "Item telah selesai dibuat",
                      duration: Duration(seconds: 2),
                      animationDuration: Duration(milliseconds: 1),
                      // margin: EdgeInsets.only(right: 14, left: 14, bottom: 14),
                      // borderRadius: 20,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 3,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(35, 175, 0, 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      "done",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
