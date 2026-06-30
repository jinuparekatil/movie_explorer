import 'package:dio/dio.dart';

import '../../../../../core/constants/api_constants.dart';
import '../../../../../core/network/api_client.dart';
import '../models/movie_model.dart';

class MovieRemoteDataSource {
  final Dio _dio = ApiClient.dio;

  Future<List<MovieModel>> getPopularMovies() async {
    final response = await _dio.get(ApiConstants.shows);

    final data = response.data as List<dynamic>;

    return data
        .map((json) => MovieModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
