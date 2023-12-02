import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_food_ordering_app/screens/constants.dart';

AppBar homeAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: IconButton( onPressed: (){},
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      ),
      title: RichText(
        text: TextSpan(
          style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight:FontWeight.bold),
          children: [
            TextSpan(
              text: "Good",
              style: TextStyle(color: ksecondaryColor),
            ),
            TextSpan(
              text: "Food",
              style: TextStyle(color: kPrimaryColor),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/notification.svg"))
      ],
    );
  }