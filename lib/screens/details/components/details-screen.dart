import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_food_ordering_app/screens/constants.dart';
import 'package:online_food_ordering_app/screens/details/components/app_bar.dart';
import 'package:online_food_ordering_app/screens/details/components/body.dart';
import 'package:online_food_ordering_app/screens/details/components/item_image.dart';
import 'package:online_food_ordering_app/screens/details/components/order_button_.dart';
import 'package:online_food_ordering_app/screens/details/components/title_price_rating.dart';
import 'package:online_food_ordering_app/screens/home/components/body.dart';
import 'package:online_food_ordering_app/screens/home/home_screen.dart';
import 'package:flutter/src/rendering/proxy_box.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: Body_screen(),
      );
  }
}




// class PricerCliper extends  CustomClipper {
//     @override
//     Path getClip(Size size) {
//     Path path = Path();
//     double ignoreHeight = 20.0;
//     path.lineTo(0, size.height-ignoreHeight);
//     path.lineTo(size.width/2, size.height);
//     path.lineTo(size.width, size.height-ignoreHeight);
//     path.lineTo(size.width, 0);
//     path.close();
//    return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper oldClipper) {
    
//    return true;
//   }
// }
