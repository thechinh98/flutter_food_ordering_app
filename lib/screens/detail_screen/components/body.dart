import 'package:flutter/material.dart';

import 'item_info.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset("assets/images/burger.png"),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}