import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_food_ordering_app/screens/home/components/category_item.dart';
import 'package:online_food_ordering_app/screens/home/components/category_list_item.dart';
import 'package:online_food_ordering_app/screens/home/components/discount_card.dart';
import 'package:online_food_ordering_app/screens/home/components/item_card.dart';
import 'package:online_food_ordering_app/screens/home/components/item_list.dart';
import 'package:online_food_ordering_app/screens/constants.dart';

import '../../../components/search_box.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBox(onChange: (value){
            print(value);
          },
          ),
          CategoryListItem(),
          Item_List(),
          DiscountCard(),
        ],
      ),
    );
  }
}










