import 'package:booklyapp/Features/Home/presentation/views/widgets/suggestedbooks_listview.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can also like',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const SuggestedBooksListView(),
      ],
    );
  }
}