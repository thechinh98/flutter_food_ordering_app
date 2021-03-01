import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar DetailsAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/share.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/more.svg"),
          onPressed: () {},
        )
      ],
    );
}