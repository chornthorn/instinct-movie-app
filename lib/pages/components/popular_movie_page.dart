import 'package:flutter/material.dart';
import 'package:flutter_demo_app/models/movie_model.dart';

class PopularMoviePage extends StatelessWidget {
  const PopularMoviePage({super.key});

  static const String routeName = "/popular-movie";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Movie"),
      ),
      body: ListView.builder(
        itemCount: Movie.getMovies().length,
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return Container(
            height: 220,
            padding: EdgeInsets.only(bottom: 8),
            child: Card(
              child: Row(
                children: [
                  Container(
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                      child: Image.network(
                        Movie.getMovies()[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Movie.getMovies()[index].title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Release Date:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "2023-04-01",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Rating:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "5.0",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              ...List.generate(
                                5,
                                (index) => Icon(
                                  Icons.star_border,
                                  size: 18,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Overview: ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "A terrifying threat emerging from the shadows of the past who's fueled by blood revenge, and who is determined to shatter this family and destroy everything—and everyone—that Dom loves, forever.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
