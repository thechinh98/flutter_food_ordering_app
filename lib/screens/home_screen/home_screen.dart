import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/app_bar.dart';
import 'components/body.dart';
import 'components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
