// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
//
// import '../pages/movie_detail_page.dart';
// import 'movie_card.dart';
//
// class AboutLayoutWidget extends StatelessWidget {
//   const AboutLayoutWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               height: 200,
//               child: ListView.builder(
//                 itemCount: 3,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     margin: EdgeInsets.only(
//                       top: 12,
//                       left: 12,
//                       right: index == 2 ? 12 : 0,
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(12),
//                       child: Image.network(
//                         'https://vice-press.com/cdn/shop/files/the-worlds-end-variant-movie-poster-juan-ramos.jpg?v=1693305509&width=1024',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 12,
//                     horizontal: 12,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Popular Movies",
//                         style: TextStyle(
//                           fontSize: 24,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {},
//                         child: Text("View all"),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       ...List.generate(Movie.getMovies().length, (index) {
//                         return MovieCard(
//                           imageUrl: Movie.getMovies()[index].imageUrl,
//                           title: Movie.getMovies()[index].title,
//                           rating: Movie.getMovies()[index].rating,
//                           year: Movie.getMovies()[index].year,
//                           index: index,
//                           hereSlug: "popular-movie-$index",
//                           onPressed: () {
//                             // final routeObj = MaterialPageRoute(
//                             //   builder: (context) {
//                             //     print(index);
//                             //     return MovieDetailPage(
//                             //       movieId: "1234",
//                             //       heroTag: "popular-movie-$index",
//                             //       moviePosterUrl:
//                             //           Movie.getMovies()[index].imageUrl,
//                             //     );
//                             //   },
//                             // );
//                             // Navigator.of(context).push(routeObj);
//                             // Navigator.of(context).pushNamed(
//                             //   '/movie-detail',
//                             //   arguments: {
//                             //     'movieId': '1234',
//                             //     'heroTag': 'popular-movie-$index',
//                             //     'moviePosterUrl':
//                             //         Movie.getMovies()[index].imageUrl,
//                             //   },
//                             // );
//
//                             GoRouter.of(context).pushNamed(
//                               '/movie-detail',
//                               extra: {
//                                 'movieId': '1234',
//                                 'heroTag': 'popular-movie-$index',
//                                 'moviePosterUrl':
//                                     Movie.getMovies()[index].imageUrl,
//                               },
//                             );
//                           },
//                         );
//                       }),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 12,
//                     horizontal: 12,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Trending Movies",
//                         style: TextStyle(
//                           fontSize: 24,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {},
//                         child: Text("View all"),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       ...List.generate(5, (index) {
//                         return MovieCard(
//                           imageUrl:
//                               "https://picsum.photos/200/300?random=$index",
//                           title: "Avengers 2023",
//                           rating: 4.5,
//                           year: 2022,
//                           index: index,
//                           hereSlug: "trending-movie-$index",
//                           onPressed: () {
//                             final routeObj = MaterialPageRoute(
//                               builder: (context) {
//                                 print(index);
//                                 return MovieDetailPage(
//                                   movieId: "1234",
//                                   moviePosterUrl:
//                                       Movie.getMovies()[index].imageUrl,
//                                   heroTag:
//                                       "trending-movie-$index", // movie-0, movie-1, movie-2
//                                 );
//                               },
//                             );
//                             Navigator.of(context).push(routeObj);
//                           },
//                         );
//                       }),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 12,
//                     horizontal: 12,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Coming Soon",
//                         style: TextStyle(
//                           fontSize: 24,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {},
//                         child: Text("View all"),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       ...List.generate(3, (index) {
//                         return MovieCard(
//                           imageUrl:
//                               "https://i0.wp.com/batman-news.com/wp-content/uploads/2023/04/The-Flash-Movie-Poster-01.jpeg?fit=1638%2C2048&quality=80&strip=info&ssl=1",
//                           title: "Movie Name 2023",
//                           rating: 4.5,
//                           year: 2022,
//                           index: index,
//                           hereSlug: "coming-soon-movie-$index",
//                           onPressed: () {
//                             final routeObj = MaterialPageRoute(
//                               builder: (context) {
//                                 print(index);
//                                 return MovieDetailPage(
//                                   movieId: "1234",
//                                   moviePosterUrl:
//                                       Movie.getMovies()[index].imageUrl,
//                                   heroTag:
//                                       "coming-soon-movie-$index", // movie-0, movie-1, movie-2
//                                 );
//                               },
//                             );
//                             Navigator.of(context).push(routeObj);
//                           },
//                         );
//                       }),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 12,
//                     horizontal: 12,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "New Movies",
//                         style: TextStyle(
//                           fontSize: 24,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {},
//                         child: Text("View all"),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       ...List.generate(3, (index) {
//                         return MovieCard(
//                           imageUrl:
//                               "https://picsum.photos/200/300?random=$index",
//                           title: "Movie Name 2023",
//                           rating: 4.5,
//                           year: 2022,
//                           index: index,
//                           hereSlug: "new-movie-$index",
//                           onPressed: () {
//                             final routeObj = MaterialPageRoute(
//                               builder: (context) {
//                                 print(index);
//                                 return MovieDetailPage(
//                                   movieId: "1234",
//                                   moviePosterUrl:
//                                       Movie.getMovies()[index].imageUrl,
//                                   heroTag:
//                                       "new-movie-$index", // movie-0, movie-1, movie-2
//                                 );
//                               },
//                             );
//                             Navigator.of(context).push(routeObj);
//                           },
//                         );
//                       }),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
