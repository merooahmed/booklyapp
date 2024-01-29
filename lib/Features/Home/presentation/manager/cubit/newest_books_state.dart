part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitialState extends NewestBooksState {}
final class NewestBooksLoadingState extends NewestBooksState {}
final class NewestBooksDFailureState extends NewestBooksState {
  final String errorMsg;
  const NewestBooksDFailureState(this.errorMsg);
}

final class NewestBooksSuccessState extends NewestBooksState {
   final List<BookModel> books;

  const NewestBooksSuccessState(this.books);
}
