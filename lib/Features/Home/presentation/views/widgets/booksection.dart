import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/botton_action.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/featured_custom_listviewitem.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookSection extends StatelessWidget {
  const BookSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .3),
          child:  CustomBookImage(
            imagUrl: bookModel.volumeInfo.imageLinks?.thumbnail??'',
                
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          bookModel.volumeInfo.title??" ",
          style: Styles.textStyle30.copyWith(fontSize: 40),
        ),
        Opacity(
          opacity: .6,
          child: Text(
            bookModel.volumeInfo.authors?[0]??" ",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
       BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.averageRating??0,
          count: bookModel.volumeInfo.ratingsCount??0,
        ),
        const SizedBox(
          height: 32,
        ),
         ButtonAction(bookModel: bookModel),
      ],
    );
  }
}
