import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_food_ordering_app/screens/constants.dart';
import 'package:online_food_ordering_app/screens/home/home_screen.dart';

AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)
          {
            return Home_Screen();
          }
          ),
          );
        },
        icon: Icon(
        Icons.arrow_back,
       ),
      ),
      actions: [
        IconButton(onPressed: (){},
         icon: SvgPicture.asset("assets/icons/share.svg"),
         color: Colors.white,
         ),
         IconButton(onPressed: (){},
         icon: SvgPicture.asset("assets/icons/more.svg"),
         color: Colors.white,
         ),
      ],
     );
  }