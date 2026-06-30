import 'package:flutter/material.dart';

import '../../domain/entities/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          movie.title.isNotEmpty ? movie.title[0].toUpperCase() : '?',
        ),
      ),
      title: Text(movie.title),
      subtitle: Text(
        movie.overview,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(movie.voteAverage.toString()),
    );
  }
}
