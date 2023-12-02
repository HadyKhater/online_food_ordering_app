import 'package:flutter/material.dart';
import 'package:online_food_ordering_app/screens/details/components/details-screen.dart';
import 'package:online_food_ordering_app/screens/home/components/item_card.dart';

class Item_List extends StatelessWidget {
  const Item_List({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
        ItemCard(svgSrc: "assets/icons/burger_beer.svg",
        title: "Chinese & Noodles",
        shopName: "Wendys",
        press: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)
          {
            return DetailsScreen();
          },
          ),
          );
        },
        ),
        ItemCard(svgSrc: "assets/icons/chinese_noodles.svg",
        title: "Burger & Beer",
        shopName: "MacDonal's",
        press: (){},
        ),
        ItemCard(svgSrc: "assets/icons/burger_beer.svg",
        title: "Burger & Beer",
        shopName: "MacDonal's",
        press: (){},
        ),
        ],
      ),
    );
  }
}