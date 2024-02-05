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
<<<<<<< HEAD
    var result = await homeRepo.fetchNewestBooks();
=======
    var result = await homeRepo.fetchFeauteredBooks();
>>>>>>> f1d1b020653abc89f05e9e3341a9de1beab46667
// ignore: avoid_types_as_parameter_names
    result.fold((Failure) => emit(NewestBooksDFailureState(Failure.errorMsg)),
        (Books) => emit(NewestBooksSuccessState(Books)));
  }
}
