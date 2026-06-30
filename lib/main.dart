import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/movies/data/datasource/movie_remote_data_source.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final movies = await MovieRemoteDataSource().getPopularMovies();

  debugPrint('Movies fetched: ${movies.length}');
  debugPrint(movies.first.title);

  runApp(
    const ProviderScope(
      child: Placeholder(),
    ),
  );
}