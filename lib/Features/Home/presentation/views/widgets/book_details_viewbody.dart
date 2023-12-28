import 'package:booklyapp/Features/Home/presentation/views/widgets/custombookdetails_appbar.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/featured_custom_listviewitem.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .3),
            child: const FeaturedListViewItem(),
          )
        ],
      ),
    );
  }
}
