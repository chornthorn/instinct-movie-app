// GoRouter configuration
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/home/home_page.dart';
import '../pages/movie_detail_page.dart';
import '../pages/popular_movie_page.dart';
import '../widgets/about_url_lanucher_pkg.dart';

final GoRouter movieGoRouterConfig = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
        // return const AboutUrlLauncherPkg();
      },
    ),
    GoRoute(
      path: '/movie-detail',
      name: '/movie-detail',
      builder: (BuildContext context, GoRouterState state) {
        final routeArgs = state.extra as Map<String, dynamic>;
        return MovieDetailPage(
          movieId: routeArgs['movieId'],
          heroTag: routeArgs['heroTag'],
          moviePosterUrl: routeArgs['moviePosterUrl'],
        );
      },
    ),
    GoRoute(
      path: PopularMoviePage.routeName,
      name: PopularMoviePage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const PopularMoviePage();
      },
    ),
  ],
);
