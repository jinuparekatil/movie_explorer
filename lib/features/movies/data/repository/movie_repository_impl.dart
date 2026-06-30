
import 'package:movie_explorer/features/movies/data/models/movie_model.dart';

import '../../domain/entities/movie.dart';
import '../../domain/repositories/movie_repository.dart';
import '../datasource/movie_remote_data_source.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Movie>> getPopularMovies() async {
    final movies = await remoteDataSource.getPopularMovies();

    return movies.map((movie) => movie.toEntity()).toList();
  }
}