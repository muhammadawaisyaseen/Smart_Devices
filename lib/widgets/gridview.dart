import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridViewPage extends StatelessWidget {
  GridViewPage(
      {required this.icon,
      required this.name,
      required this.switchbtn,
      super.key});

  String icon;
  String name;
  bool switchbtn;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Image.asset(icon),
          Row(
            children: [
              Text(name),
            ],
          )
        ],
      ),
    );
  }
}
