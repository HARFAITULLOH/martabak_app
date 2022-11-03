import 'package:flutter/material.dart';

import './list_item_on_goind.dart';

class ListOnGoing extends StatelessWidget {
  const ListOnGoing({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (size.height / 2) - 90,
      child: ListView(
        children: <Widget>[
          ListItem(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
