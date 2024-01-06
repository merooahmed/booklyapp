import 'package:booklyapp/Features/Home/presentation/views/widgets/featured_custom_listviewitem.dart';
import 'package:flutter/material.dart';

class SuggestedBooksListView extends StatelessWidget {
  const SuggestedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const CustomBookImage();
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
