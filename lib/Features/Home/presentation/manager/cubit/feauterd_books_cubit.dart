// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';


import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';

import 'package:booklyapp/Features/Home/data/repos/home_repo.dart';
import 'package:booklyapp/core/erros/failures.dart';


import 'package:equatable/equatable.dart';


part 'feauterd_books_state.dart';


class FeauterdBooksCubit extends Cubit<FeauterdBooksState> {

  FeauterdBooksCubit(this.homeRepo) : super(FeauterdBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeauterdBooks()async {

    emit(FeauterdBooksLoadingState());
    var result = await homeRepo.fetchFeauteredBooks();
// ignore: avoid_types_as_parameter_names
result.fold((Failure) => emit(FeauterdBooksFailureState(Failure.errorMsg)), (Books) => emit(FeauterdBooksSuccessStat(Books)));
  }

}

