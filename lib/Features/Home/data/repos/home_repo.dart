import 'package:booklyapp/Features/Home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/erros/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeauteredBooks();
<<<<<<< HEAD
  Future<Either<Failure, List<BookModel>>> fetchsimiliarBooks({required String category});
=======
>>>>>>> f1d1b020653abc89f05e9e3341a9de1beab46667
}
