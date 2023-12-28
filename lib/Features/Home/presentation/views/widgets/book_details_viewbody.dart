import 'package:booklyapp/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/botton_action.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/custombookdetails_appbar.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/featured_custom_listviewitem.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/styles.dart';
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
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontSize: 40),
          ),
          Opacity(
            opacity: .6,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 32,
          ),
          const ButtonAction()
        ],
      ),
    );
  }
}
