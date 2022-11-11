import 'package:flutter/material.dart';

class DoneText extends StatelessWidget {
  const DoneText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: <Widget>[
          Text(
            'done',
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
            color: Color.fromRGBO(35, 175, 0, 1),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(35, 175, 0, 1),
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
    );
  }
}
