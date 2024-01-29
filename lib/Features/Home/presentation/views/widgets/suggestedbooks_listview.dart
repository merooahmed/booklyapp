import 'package:booklyapp/Features/Home/presentation/manager/cubit/cubit/similar_books_cubit.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/featured_custom_listviewitem.dart';
import 'package:booklyapp/core/utils/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuggestedBooksListView extends StatelessWidget {
  const SuggestedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  imagUrl:
                      state.books[index].volumeInfo.imageLinks?.thumbnail??'',
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is SimilarBooksfailureState) {
          return CustomErrorWidget(errorMsg: state.erroMsg);
        } else {
          return  const CircularProgressIndicator();
        }
      },
    );
  }
}
