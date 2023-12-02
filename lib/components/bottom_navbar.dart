import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      width: double.infinity,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0XFF6DAED9).withOpacity(0.10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){},
           icon: SvgPicture.asset("assets/icons/home.svg")),
           IconButton(onPressed: (){},
           icon: SvgPicture.asset("assets/icons/Following.svg")),
           IconButton(onPressed: (){},
           icon: SvgPicture.asset("assets/icons/Glyph.svg")),
           IconButton(onPressed: (){},
           icon: SvgPicture.asset("assets/icons/person.svg")),
        ],
      ),
    );
  }
}