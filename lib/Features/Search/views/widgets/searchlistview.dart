import 'package:booklyapp/Features/Home/presentation/views/widgets/best_seller_listviewitem.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 20,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
           // child: NewestBooksListViewItem(),
          );
        });
  }
}
