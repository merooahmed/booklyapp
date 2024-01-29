import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final HomeRepo homeRepo;

  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  Future<void> fetchSimilarBooks( String  category) async {

    emit(SimilarBookLoadingState());

    var result = await homeRepo.fetchsimiliarBooks(category: category);

// ignore: avoid_types_as_parameter_names, non_constant_identifier_names
    result.fold((Failure) => emit(SimilarBooksfailureState(  Failure.errorMsg )),
        // ignore: non_constant_identifier_names
        (Books) => emit(SimilarBooksSuccessState( Books)));

  }
}
