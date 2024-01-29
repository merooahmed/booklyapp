import 'package:booklyapp/Features/Home/presentation/manager/cubit/newest_books_cubit.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/best_seller_listviewitem.dart';
import 'package:booklyapp/core/utils/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: NewestBooksListViewItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewestBooksDFailureState) {
          return CustomErrorWidget(
            errorMsg: state.errorMsg,
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
