import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 18,
        ),
        const SizedBox(
          width: 6.3,
        ),
         Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 3.1,
        ),
        Text(
          count.toString(),
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
