import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:movie_explorer/app/app.dart';

import 'package:movie_explorer/features/movies/data/providers/movie_data_provider.dart';
import 'package:movie_explorer/features/movies/domain/entities/movie.dart';
import 'package:movie_explorer/features/movies/domain/repositories/movie_repository.dart';

class FakeMovieRepository implements MovieRepository {
  @override
  Future<List<Movie>> getPopularMovies() async {
    return const [
      Movie(
        id: 1,
        title: 'Test Movie',
        overview: 'Test Overview',
        posterPath: '',
        voteAverage: 8.5,
      ),
    ];
  }
}

void main() {
  testWidgets('Movie Explorer loads', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          movieRepositoryProvider.overrideWithValue(FakeMovieRepository()),
        ],
        child: const MovieExplorerApp(),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Test Movie'), findsOneWidget);
  });
}
