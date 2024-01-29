import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/core/utils/app_routes.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem(
      {super.key, required this.imageUrl, required this.bookModel});
  final String imageUrl;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookdetailsroute, extra: bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: SizedBox(
          height: 170,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 3 / 4.5,
                child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: imageUrl,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    )),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        '${bookModel.volumeInfo.title}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle30,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                     Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14,
                    ),
                     Row(
                      children: [
                     const    Text(
                          "Free",
                          style: Styles.textStyle20,
                        ),
                       const  Spacer(),
                        BookRating(rating: bookModel.volumeInfo.averageRating??0, count:bookModel.volumeInfo.ratingsCount??0,)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
