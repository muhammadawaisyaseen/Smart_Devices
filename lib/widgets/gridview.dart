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
      // height: 20,
      // width: 20,
      decoration: BoxDecoration(
        color: Color(0xFFecebec),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: 80,
            // width: 80,
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name),
                Switch(
                  value: false,
                  onChanged: (value) => {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
