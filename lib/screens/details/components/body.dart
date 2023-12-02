import 'package:flutter/material.dart';
import 'package:online_food_ordering_app/screens/constants.dart';
import 'package:online_food_ordering_app/screens/details/components/item_image.dart';
import 'package:online_food_ordering_app/screens/details/components/order_button_.dart';
import 'package:online_food_ordering_app/screens/details/components/title_price_rating.dart';

class Body_screen extends StatelessWidget {
  const Body_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemImage(
          imgSrc: "assets/images/burger.png"
          ),
          Expanded(
            child: ItemInfo(),
          ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
    padding: EdgeInsets.all(20.0),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadiusDirectional.only(
        topStart: Radius.circular(30),
        topEnd: Radius.circular(30)
      ),
    ),
    child: SingleChildScrollView(
      child: Column(
        children: [
          shopeName(name: "MacDonals"),
          TitlePriceRating
          (name: 'Cheese Burger',
           numOfReviews: 24,
           rating: 3.5,
           price:15,
          ),
          Text(
            "McDonald’s Ritmo y Color, a celebration of urban music, art and Latino culture, is proud to present an exclusive live concert experience featuring Grammy-nominated artist Camilo. Putting the power in the hands of fans nationwide, fans will be able to bring Camilo live to two cities from a choice of six venues: New York, San Antonio, Dallas, Chicago, San Jose or Miami. Vote now to bring Camilo to your city! Voting is open from June 27 to July 18, 2023.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          OrderButton(size: size , prees: (){},),
        ],
      ),
    ),
    );
  }

  Row shopeName({required String name}) {
    return Row(
        children: [
          Icon(
            Icons.location_on,
            color: ksecondaryColor,
          ),
          Text(
            name,
          ),
        ],
      );
  }
}
