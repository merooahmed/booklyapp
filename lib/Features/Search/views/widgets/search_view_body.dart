import 'package:booklyapp/Features/Search/views/widgets/customsearchfieldtext.dart';
import 'package:booklyapp/Features/Search/views/widgets/searchlistview.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchFieldText(),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search Result ',
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
          ),
          const Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}
