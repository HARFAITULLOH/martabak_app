import 'package:flutter/material.dart';

class OnGoingText extends StatelessWidget {
  const OnGoingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: <Widget>[
          Text(
            'on going',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: 5),
          Container(
            width: 8,
            height: 8,
            color: Color.fromRGBO(255, 168, 0, 1),
          )
        ],
      ),
    );
  }
}
