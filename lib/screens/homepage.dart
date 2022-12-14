import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/gridview.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List devices = [
    ['assets/icons/bulb.png', 'Smart Light', false],
    // ['ac.png', 'Smart AC', false],
    // ['tv.png', 'Smart TV', false],
    // ['fan.png', 'Smart Fan', false]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/icons/homeicon.png',
                  height: 45,
                  color: Color.fromARGB(255, 57, 53, 53),
                ),
                const Icon(
                  Icons.supervised_user_circle_sharp,
                  size: 45,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Welcome Home"),
            const Text(
              "Awais Yaseen",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Smart Devices"),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
              itemCount: devices.length,
              itemBuilder: (context, index) {
                return GridViewPage(
                  icon: devices[index][0],
                  name: devices[index][1],
                  switchbtn: devices[index][2],
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
