import 'package:flutter/material.dart';
import 'package:flutter_food_ordering_app/constant.dart';
import 'package:flutter_food_ordering_app/screens/detail_screen/components/body.dart';

import 'components/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(),
      body: Body(),
    );
  }
}


