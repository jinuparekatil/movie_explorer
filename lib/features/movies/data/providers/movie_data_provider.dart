import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../datasource/movie_remote_data_source.dart';
import '../repository/movie_repository_impl.dart';
import '../../domain/repositories/movie_repository.dart';

final movieRepositoryProvider = Provider<MovieRepository>((ref) {
  return MovieRepositoryImpl(MovieRemoteDataSource());
});
