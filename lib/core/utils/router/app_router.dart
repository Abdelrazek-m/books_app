import 'package:books_app/core/utils/router/routers_names.dart';
import 'package:books_app/features/home/presentation/views/book_detials_view.dart';
import 'package:books_app/features/home/presentation/views/home_view.dart';
import 'package:books_app/features/search/presentation/views/search_view.dart';
import 'package:books_app/features/splach/presentation/views/splach_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: RouterNames.rSplashView,
        builder: (context, state) => const SplachView(),
      ),
      GoRoute(
        path: RouterNames.rHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: RouterNames.rBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: RouterNames.rSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
