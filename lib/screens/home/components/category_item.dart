import 'package:flutter/material.dart';
import 'package:online_food_ordering_app/screens/constants.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;
  const CategoryItem({
    super.key,
     required this.title, 
     this.isActive = false, 
     required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
        child: Column(
          children: [
            Text(
              title,
            style: isActive? TextStyle(
              color: kTextColor,
            ): TextStyle(fontSize: 12),
            ),
            if (isActive)
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              height: 3,
              width: 22,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}