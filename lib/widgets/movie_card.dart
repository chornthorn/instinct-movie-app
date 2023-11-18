import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.year,
    required this.index,
    this.onPressed,
    required this.hereSlug,
  });

  final String imageUrl;
  final String title;
  final double rating;
  final int year;
  final int index;
  final VoidCallback? onPressed;
  final String hereSlug;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 12,
        right: index == 2 ? 12 : 0,
      ),
      width: 200,
      padding: EdgeInsets.only(
        bottom: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(
                tag: hereSlug,
                child: Image.network(
                  imageUrl,
                  height: 122,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: Icon(
                  index == 0 ? Icons.favorite : Icons.favorite_border_outlined,
                  color: Colors.red,
                  size: 32,
                ),
              ),
              SizedBox(
                height: 122,
                width: 200,
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.play_circle,
                    color: Colors.white,
                    size: 48,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      rating.toString(),
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.red,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      year.toString(),
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 8,
            ),
            width: double.infinity, //
            child: OutlinedButton.icon(
              onPressed: onPressed,
              label: Text("Watch Trailer"),
              icon: Icon(Icons.play_circle),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
