import 'package:flutter/material.dart';

class DoneItem extends StatelessWidget {
  const DoneItem({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width - 28,
      height: (size.height / 2) - 42,
      decoration: BoxDecoration(
        color: Color.fromRGBO(242, 242, 242, 1),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: Offset(0, 5),
            blurRadius: 2,
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15),
            Row(
              children: <Widget>[
                Text(
                  'done',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 8,
                  height: 8,
                  color: Color.fromRGBO(35, 175, 0, 1),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: (size.height / 2) - 90,
              child: ListView(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(229, 229, 229, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      dense: true,
                      visualDensity: VisualDensity(vertical: -2),
                      title: Text("Name"),
                      subtitle: Text("My name is Harfaitulloh"),
                      leading: CircleAvatar(),
                      trailing: Text(
                        "Selesai",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
