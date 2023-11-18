// GoRouter configuration
import 'package:flutter/material.dart';
import 'package:flutter_demo_app/pages/components/popular_movie_page.dart';
import 'package:flutter_demo_app/pages/main_page.dart';
import 'package:go_router/go_router.dart';
import '../pages/components/movie_detail_page.dart';

final GoRouter movieGoRouterConfig = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainPage();
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
