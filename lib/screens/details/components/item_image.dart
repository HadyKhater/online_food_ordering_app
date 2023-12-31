import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imgSrc;
  const ItemImage({
    super.key,
     required this.imgSrc,
    
  });

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imgSrc,
      width: double.infinity,
      height: size.height*0.25,
      fit: BoxFit.fill,
    );
  }
}