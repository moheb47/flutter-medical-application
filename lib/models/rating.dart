import 'package:flutter/material.dart';
class RatingStars extends StatelessWidget {
  double rating;
  RatingStars(this.rating);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      if (rating <= 1.0) ...[
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star_rate_outlined,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star_rate_outlined,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star_rate_outlined,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star_rate_outlined,
          color: Color(0xffffd500),
        )
      ] else if (rating <= 2.0 && rating > 1.0) ...[
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star_rate_outlined,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star_rate_outlined,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star_rate_outlined,
          color: Color(0xffffd500),
        )
      ] else if (rating <= 3.0 && rating > 2.0) ...[
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star_rate_outlined,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star_rate_outlined,
          color: Color(0xffffd500),
        )
      ] else if (rating <= 4.0 && rating > 3.0) ...[
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star_rate_outlined,
          color: Color(0xffffd500),
        )
      ] else if (rating <= 5.0 && rating > 4.0) ...[
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        ),
        const Icon(
          Icons.star,
          color: Color(0xffffd500),
        )
      ],
    ]);
  }
}
