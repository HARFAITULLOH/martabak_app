import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        trailing: Wrap(
          spacing: 12, // space between two icons
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print("Cencel");
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
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
                print("done");
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
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
    );
  }
}
