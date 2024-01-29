import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/booksection.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/custombookdetails_appbar.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/similarbok_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
              const   CustomBookDetailsAppBar(),
                BookSection(
                  bookModel: bookModel,
                ),
               const  Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
              const   SimilarBookSection(),
              const   SizedBox(
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
