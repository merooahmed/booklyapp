import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/utils/functions/launch_url_fun.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 58),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 60,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16)))),
                  onPressed: ()  {
                   
                  },
                  child: Text(
                    'Free',
                    style: Styles.textStyle20.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  )),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 60,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xffEF8363),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16)))),
                  onPressed: () {
launchCustomUr(context, bookModel.volumeInfo.previewLink);
                  },
                  child: Text(
                    getText(bookModel),
                    style: Styles.textStyle20.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )),
            ),
          ),
        ],
      ),
    );
  }
   String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}
