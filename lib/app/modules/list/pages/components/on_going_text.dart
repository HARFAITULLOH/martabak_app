import 'package:flutter/material.dart';

class OnGoingText extends StatelessWidget {
  const OnGoingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          color: Color.fromRGBO(255, 168, 0, 1),
        )
      ],
    );
  }
}
