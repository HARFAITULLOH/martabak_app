import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './list_item_done.dart';
import '../../../../menu/controllers/menu_controller.dart';

class ListDone extends StatelessWidget {
  const ListDone({
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
          () => menuC.doneProducts.isEmpty
              ? Center(child: Text("Belum ada pesanan yang selesai"))
              : ListView.builder(
                  itemCount: menuC.doneProducts.length,
                  itemBuilder: (context, i) {
                    final data = menuC.doneProducts[i];
                    if (i == 0) {
                      return ListItemDone(data: data, sizedBoxHeight: 0);
                    } else {
                      return ListItemDone(data: data, sizedBoxHeight: 10);
                    }
                  },
                ),
        ),
      ),
    );
  }
}
