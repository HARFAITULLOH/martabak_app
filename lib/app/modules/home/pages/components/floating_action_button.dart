import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../modules/list/pages/list_page.dart';
import '../../../menu/controllers/menu_controller.dart';

class FloatActionButton extends StatelessWidget {
  const FloatActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuC = Get.find<MenuController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
              ),
            ],
          ),
          child: Stack(
            children: <Widget>[
              Center(
                child: IconButton(
                  iconSize: 50,
                  alignment: Alignment.center,
                  onPressed: () {
                    Get.to(
                      () => ListPage(),
                      transition: Transition.downToUp,
                      duration: Duration(milliseconds: 300),
                      binding: BindingsBuilder(() {
                        Get.put(MenuController());
                      }),
                    );
                  },
                  icon: Icon(
                    Icons.list_alt,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Obx(
                () => (menuC.onGoingCount.value == 0)
                    ? Container()
                    : Align(
                        alignment: Alignment(1.6, -1.6),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 168, 0, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              menuC.onGoingCount.toString(),
                            ),
                          ),
                        ),
                      ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
