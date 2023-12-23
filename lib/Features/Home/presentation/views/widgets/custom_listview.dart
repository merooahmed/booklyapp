import 'package:booklyapp/Features/Home/presentation/views/widgets/featured_custom_listviewitem.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(itemBuilder: (context, index) {
        return  const FeaturedListViewItem();
      },
      scrollDirection: Axis.horizontal,
      ),
    );
  }
}
