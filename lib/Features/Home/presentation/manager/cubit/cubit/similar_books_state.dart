part of 'similar_books_cubit.dart';


sealed class SimilarBooksState extends Equatable {

  const SimilarBooksState();


  @override

  List<Object> get props => [];

}


final class SimilarBooksInitial extends SimilarBooksState {}


final class SimilarBooksSuccessState extends SimilarBooksState {

  final  List<BookModel> books;

 const  SimilarBooksSuccessState(this.books);

}


final class SimilarBooksfailureState extends SimilarBooksState {

  final String erroMsg;


  const SimilarBooksfailureState( this.erroMsg);

}


final class SimilarBookLoadingState extends SimilarBooksState {}

