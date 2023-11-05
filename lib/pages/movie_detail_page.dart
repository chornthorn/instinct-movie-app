import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({
    super.key,
    required this.movieId,
    required this.heroTag,
    required this.moviePosterUrl,
  });

  final String movieId;
  final String heroTag;
  final String moviePosterUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Detail: $heroTag'),
        // leading: BackButton(
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        //   icon: Icon(Icons.arrow_back_ios),
        // ),
        // automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Share'),
                    content: Text('Share this movie'),
                    actions: [
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // movie poster / featured image
            Container(
              color: Colors.grey,
              height: 300,
              width: double.infinity,
              child: Hero(
                tag: heroTag, // movie-0, movie-1, movie-2
                // child: Image.network(
                //   moviePosterUrl,
                //   fit: BoxFit.cover,
                // ),
                child: Image.asset(
                  "assets/img/movie_poster1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // title
            // release date
            // overview
            // vote average
            // comment
          ],
        ),
      ),
    );
  }
}
