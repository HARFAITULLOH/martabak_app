import 'package:flutter/material.dart';

class OnGoingItem extends StatelessWidget {
  const OnGoingItem({
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
                  'on going',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 8,
                  height: 8,
                  color: Colors.orange,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
