import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_food_ordering_app/screens/constants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged onChange;
  const SearchBox({
    super.key, required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: ksecondaryColor.withOpacity(0.32),
        ),
      ),
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          border:InputBorder.none,
          icon: SvgPicture.asset("assets/icons/search.svg"),
          hintText: "Search here",
          hintStyle: TextStyle(color: ksecondaryColor),
        ),
      ),
    );
  }
}