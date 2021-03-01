import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../../constant.dart';

class TitlePriceRating extends StatelessWidget {
  final int price, numOfReviews;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChanged;
  const TitlePriceRating({
    Key key, this.price, this.numOfReviews, this.rating, this.name, this.onRatingChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: Theme.of(context).textTheme.headline),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SmoothStarRating(
                      borderColor: kPrimaryColor,
                      rating: rating,
                      onRated: onRatingChanged,
                    ),
                    SizedBox(width: 10,),
                    Text("$numOfReviews reviews"),
                  ],
                ),
              ],
            ),
          ),
          PriceTag(context, price: price),
        ],
      ),
    );
  }

  ClipPath PriceTag(BuildContext context, {int price}) {
    return ClipPath(
          clipper: PricerCliper(),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            height: 66,
            width: 65,
            color: kPrimaryColor,
            child: Center(
              child: Text("\$$price", style: Theme.of(context).textTheme.title.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold,
              )
              ),
            ),
          ),
        );
  }
}
class PricerCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width/2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
