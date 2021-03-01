import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoryList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(
            title: "Combo Meal",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Chicken",
            isActive: false,
            press: () {},
          ),
          CategoryItem(
            title: "Beverages",
            isActive: false,
            press: () {},
          ),
          CategoryItem(
            title: "Snack & Slides",
            isActive: false,
            press: () {},
          ),
        ],
      ),
    );
  }
}