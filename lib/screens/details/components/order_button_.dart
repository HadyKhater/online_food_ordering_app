import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_food_ordering_app/screens/constants.dart';

class OrderButton extends StatelessWidget {
  final Function() prees;
  const OrderButton({
    super.key,
    required this.size, required this.prees,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20.0),
      width: size.width * 0.8,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
        color: kPrimaryColor,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: prees,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/bag.svg"),
                SizedBox(
                  width: 10.0,
                ),
                Text("Order Now",
                style: TextStyle
                (
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}