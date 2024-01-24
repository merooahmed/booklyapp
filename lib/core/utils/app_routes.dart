// ignore_for_file: non_constant_identifier_names

import 'package:booklyapp/Features/Home/presentation/views/home_view.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/book_details_view.dart';
import 'package:booklyapp/Features/Search/views/serach_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/splash_view.dart';

import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeroute = '/home_view';
  static const kBookdetailsroute = '/bookdetails_view';
   static const ksearchView = '/searchbooks_view';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      // ignore: avoid_types_as_parameter_names
      builder: (context, State) => const SplashView(),
    ),
    GoRoute(path: kHomeroute, builder: (context, State) => const HomeView()),
    GoRoute(path: kBookdetailsroute, builder: (context, State) => const BookDetailsView()),
     GoRoute(
        path: ksearchView,
        builder: (context, State) => const SearchView()),
  ]);
}
