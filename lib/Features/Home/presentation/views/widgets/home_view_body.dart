import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/best_seller_listview.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/best_seller_listviewitem.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/custom_listview.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeauterdBooksListView(),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: true,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: NewestBooksListView(),
          ),
        )
      ],
    );
  }
}
