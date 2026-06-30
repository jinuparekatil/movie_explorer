import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/movie.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    required int id,
    required String title,
    required String overview,
    required String posterPath,
    required double voteAverage,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
    id: json['id'] as int,
    title: json['name'] as String? ?? '',
    overview: json['summary'] as String? ?? '',
    posterPath: (json['image']?['medium'] as String?) ?? '',
    voteAverage: (json['rating']?['average'] as num?)?.toDouble() ?? 0.0,
  );
}

extension MovieModelMapper on MovieModel {
  Movie toEntity() {
    return Movie(
      id: id,
      title: title,
      overview: overview,
      posterPath: posterPath,
      voteAverage: voteAverage,
    );
  }
}
