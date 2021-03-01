import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';


AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
    title: Center(
      child: RichText(
        text: TextSpan(
          style: Theme
              .of(context)
              .textTheme
              .title
              .copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: "Punk",
              style: TextStyle(color: kSecondaryColor),
            ),
            TextSpan(
              text: "Food",
              style: TextStyle(color: kPrimaryColor),
            )
          ],
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/notification.svg"),
        onPressed: () {},
      )
    ],
  );
}