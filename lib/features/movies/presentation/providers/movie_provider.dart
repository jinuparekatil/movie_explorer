import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/providers/movie_data_provider.dart';
import '../../domain/entities/movie.dart';

final popularMoviesProvider = FutureProvider<List<Movie>>((ref) async {
  final repository = ref.watch(movieRepositoryProvider);

  return repository.getPopularMovies();
});
