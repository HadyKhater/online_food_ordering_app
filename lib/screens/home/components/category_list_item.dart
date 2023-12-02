import 'package:flutter/material.dart';
import 'package:online_food_ordering_app/screens/home/components/category_item.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    super.key,
  });

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
            press:(){},
            ),
            CategoryItem(
            title: "Chicken",
            
            press:(){},
            ),
            CategoryItem(
            title: "Beverages",
            
            press:(){},
            ),
            CategoryItem(
            title: "Snacks & Sides",
            
            press:(){},
            ),
            
        ],
      ),
    );
  }
}