import 'package:flutter/material.dart';
import 'package:flutter_food_ordering_app/screens/detail_screen/detail_screen.dart';

import 'item_card.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            title: "Burgers & Beer",
            svgSrc: "assets/icons/burger_beer.svg",
            shopName: "MacDonald's",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailsScreen();
                },)
              );
            },
          ),
          ItemCard(
            title: "Chinese Noodles",
            svgSrc: "assets/icons/chinese_noodles.svg",
            shopName: "Mendys",
            press: () {},
          ),
          ItemCard(
            title: "Burgers & Beer",
            svgSrc: "assets/icons/burger_beer.svg",
            shopName: "MacDonald's",
            press: () {},
          ),
        ],
      ),
    );
  }
}
