import 'package:flutter/material.dart';
import 'package:flutter_food_ordering_app/constant.dart';
import 'package:flutter_food_ordering_app/screens/home_screen/components/item_list.dart';
import 'package:flutter_food_ordering_app/screens/home_screen/components/search_box.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import 'category_list.dart';
import 'discount_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        ItemList(),
        DiscountCard(),
      ],
    );
  }
}

