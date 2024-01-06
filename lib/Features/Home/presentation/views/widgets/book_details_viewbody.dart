import 'package:booklyapp/Features/Home/presentation/views/widgets/booksection.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/custombookdetails_appbar.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/similarbok_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBookSection(),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
