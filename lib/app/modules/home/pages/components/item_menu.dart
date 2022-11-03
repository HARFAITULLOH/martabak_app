import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.26,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: size.height * 0.26,
            width: size.width - 28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                  offset: Offset(5, 5),
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 30,
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Image.asset(
              image,
              width: size.width - 28,
              height: size.height * 0.26,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            width: size.width - 28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              gradient: LinearGradient(
                begin: Alignment(0, 0.0001),
                end: Alignment(0, 1.2),
                colors: [
                  Color.fromRGBO(0, 0, 0, 0),
                  Colors.black,
                ],
              ),
            ),
          ),
          Container(
            height: size.height * 0.26,
            width: size.width - 28,
            padding: EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
