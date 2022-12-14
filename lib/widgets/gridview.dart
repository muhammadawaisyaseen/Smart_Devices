import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridViewPage extends StatefulWidget {
  GridViewPage(
      {required this.icon,
      required this.name,
      required this.switchbtn,
      super.key});

  String icon;
  String name;
  bool switchbtn;

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
// Container takes width and height from gridview builder
      decoration: BoxDecoration(
        color: widget.switchbtn == false
            ? Color(0xFFecebec)
            : Color.fromARGB(255, 13, 81, 37),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            widget.icon,
            color: widget.switchbtn == false ? Colors.black : Colors.white,
            height: 80,
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color:
                        widget.switchbtn == false ? Colors.black : Colors.white,
                  ),
                ),
                Switch(
                  value: widget.switchbtn,
                  onChanged: (clickedval) {
                    print(clickedval);
                    setState(() {
                      widget.switchbtn = clickedval;
                    });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
