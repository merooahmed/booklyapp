part of 'feauterd_books_cubit.dart';


sealed class FeauterdBooksState extends Equatable {

  const FeauterdBooksState();


  @override

  List<Object> get props => [];

}


final class FeauterdBooksInitial extends FeauterdBooksState {}


final class FeauterdBooksLoadingState extends FeauterdBooksState {}


final class FeauterdBooksFailureState extends FeauterdBooksState {

  final String errorMsg;
  const FeauterdBooksFailureState(this.errorMsg);

}


final class FeauterdBooksSuccessStat extends FeauterdBooksState {
  final List<BookModel> books;

  const FeauterdBooksSuccessStat(this.books);

}

