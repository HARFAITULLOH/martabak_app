import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:martabak_app/app/routes/app_pages.dart';

import '../../../../modules/list/pages/list_page.dart';

class FloatActionButton extends StatelessWidget {
  const FloatActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(35),
          ),
          child: IconButton(
            iconSize: 45,
            alignment: Alignment.center,
            onPressed: () {
              Get.toNamed(Routes.LIST);
            },
            icon: Icon(Icons.list),
          ),
        )
      ],
    );
  }
}
