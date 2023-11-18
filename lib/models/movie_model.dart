class Movie {
  final String imageUrl;
  final String title;
  final double rating;
  final int year;
  final int index;

  Movie({
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.year,
    required this.index,
  });

  // mock data for testing
  static List<Movie> getMovies() {
    return [
      Movie(
        imageUrl:
            "https://www.themoviedb.org/t/p/original/y9xS5NQTBnFjDoXhSFQeGxlmkoM.jpg",
        title: "The Boy and the Heron",
        rating: 5.0,
        year: 2022,
        index: 1,
      ),
      Movie(
        imageUrl:
            "https://assets-prd.ignimgs.com/2023/02/03/foevbcsayamvqpf-1675462826997.jpg",
        title: "Avatars 2023",
        rating: 5.0,
        year: 2022,
        index: 2,
      ),
      Movie(
        imageUrl:
            "https://pixarpost.com/wp-content/uploads/2023/06/Elemental-Fandango-Character-Poster.jpg",
        title: "Elemental 2023",
        rating: 5.0,
        year: 2022,
        index: 3,
      ),
      Movie(
        imageUrl: "https://picsum.photos/200/300?random=4",
        title: "Popular Movie Name 2023",
        rating: 5.0,
        year: 2022,
        index: 4,
      ),
    ];
  }
}
