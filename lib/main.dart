import 'package:flutter/material.dart';
import 'package:flutter_demo_app/home_page.dart';
import 'package:flutter_demo_app/pages/movie_detail_page.dart';
import 'package:go_router/go_router.dart';

import 'pages/not_found_page.dart';
import 'pages/rating_page.dart';
import 'routes/on_generate_route.dart';

void main() {
  runApp(const RootWidget());
}

// GoRouter configuration
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
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
  ],
);

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   theme: ThemeData(
    //     useMaterial3: true,
    //   ),
    //   // home: HomePage(),
    //   // routes: {
    //   //   "/": (context) => HomePage(), // root route
    //   //   '/movie': (context) => Scaffold(
    //   //         appBar: AppBar(
    //   //           title: Text('Movie Detail'),
    //   //         ),
    //   //       ),
    //   // },
    //   initialRoute: '/',
    //   onGenerateRoute: onGenerateRoute,
    //   onUnknownRoute: (settings) {
    //     return MaterialPageRoute(
    //       builder: (context) => NotFoundPage(),
    //     );
    //   },
    // );

    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
