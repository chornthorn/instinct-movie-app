import 'package:flutter/material.dart';

import '../home_page.dart';
import '../pages/movie_detail_page.dart';
import '../pages/not_found_page.dart';
import '../pages/rating_page.dart';

Route<dynamic>? onGenerateRoute(settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );
    case '/movie-detail':
      // cast to Map<String, dynamic>
      final routeArgs = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => MovieDetailPage(
          movieId: routeArgs['movieId'],
          heroTag: routeArgs['heroTag'],
          moviePosterUrl: routeArgs['moviePosterUrl'],
        ),
      );
    case '/rating-page':
      return MaterialPageRoute(
        builder: (context) => RatingPage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => NotFoundPage(),
      );
  }
}
