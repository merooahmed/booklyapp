// ignore_for_file: non_constant_identifier_names

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialState());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoadingState());
    var result = await homeRepo.fetchFeauteredBooks();
// ignore: avoid_types_as_parameter_names
    result.fold((Failure) => emit(NewestBooksDFailureState(Failure.errorMsg)),
        (Books) => emit(NewestBooksSuccessState(Books)));
  }
}
