import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:online_food_ordering_app/screens/constants.dart';

class TitlePriceRating extends StatelessWidget {
  final int  price, numOfReviews;
  final double rating;
  final String name;
  const TitlePriceRating({
    super.key,
     required this.price,
      required this.numOfReviews,
       required this.rating,
        required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
         Expanded(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text( 
              "$name",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: 10.0,
            ),
           Row(
             children: [
               RatingBar.builder(
                itemSize: 20.0,
                  initialRating: rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: kPrimaryColor,                  
                  ),
       onRatingUpdate: (rating) {
         print(rating);
       },
    ),
    SizedBox(
      width: 10.0,
    ),
    Text(
      "$numOfReviews reviews",
    ),
             ],
           ),
            ],
           ),
         ), 
         ClipPath(
          // clipper: PricerCliper(),
           child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 15),
            width: 65,
            height: 66,
            color: kPrimaryColor,
            child: Text(
              "\$$price",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,fontWeight: FontWeight.bold,
              ),
            ),
           ),
         ),
        ],
      ),
    );
  }
}
