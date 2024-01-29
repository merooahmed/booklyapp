import 'package:booklyapp/Features/Home/presentation/manager/cubit/feauterd_books_cubit.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/featured_custom_listviewitem.dart';
import 'package:booklyapp/core/utils/app_routes.dart';
import 'package:booklyapp/core/utils/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeauterdBooksListView extends StatelessWidget {
  const FeauterdBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeauterdBooksCubit, FeauterdBooksState>(
      builder: (context, state) {
        if (state is FeauterdBooksSuccessStat) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics:  const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                   onTap: (){
                    GoRouter.of(context)
                          .push(AppRouter.kBookdetailsroute, extra: state.books[index]);
                   },
                  child: CustomBookImage(imagUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??''));
              },
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is FeauterdBooksFailureState) {
          return CustomErrorWidget(errorMsg: state.errorMsg);
        } else {
          return const Center(child:  CircularProgressIndicator());
        }
      },
    );
  }
}
