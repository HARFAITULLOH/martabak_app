import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './list_item_on_goind.dart';
import '../../../../menu/controllers/menu_controller.dart';

class ListOnGoing extends StatelessWidget {
  const ListOnGoing({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final menuC = Get.find<MenuController>();
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        height: (size.height / 2) - 82,
        child: Obx(
          () => menuC.products.isEmpty
              ? Center(
                  child: Text("Belum ada pesanan"),
                )
              : ListView.builder(
                  itemCount: menuC.products.length,
                  itemBuilder: (context, i) {
                    final data = menuC.products[i];
                    if (i == 0) {
                      return ListItemOnGoing(
                        data: data,
                        sizedBoxHeight: 0,
                      );
                    } else {
                      return ListItemOnGoing(
                        data: data,
                        sizedBoxHeight: 10,
                      );
                    }
                  },
                ),
        ),
      ),
    );
  }
}
