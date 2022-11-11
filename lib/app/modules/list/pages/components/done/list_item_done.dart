import 'package:flutter/material.dart';

import '../../../../../data/models/product_model.dart';

class ListItemDone extends StatelessWidget {
  const ListItemDone({
    Key? key,
    required this.data,
    required this.sizedBoxHeight,
  }) : super(key: key);

  final Product data;
  final double sizedBoxHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: sizedBoxHeight,
        ),
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(229, 229, 229, 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            horizontalTitleGap: 8,
            dense: true,
            visualDensity: VisualDensity(vertical: -2),
            title: Text(
              data.name,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              data.taste,
              style: TextStyle(
                fontSize: 11,
              ),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage(data.image),
            ),
            trailing: Wrap(
              spacing: 15,
              children: <Widget>[
                Text("${data.total}"),
                Text(
                  "Selesai",
                  style: TextStyle(
                    color: Color.fromRGBO(35, 175, 0, 1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
