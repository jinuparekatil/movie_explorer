import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../movies/presentation/providers/movie_provider.dart';
import '../../../movies/presentation/widgets/movie_list.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(popularMoviesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Movie Explorer')),
      body: movies.when(
        data: (movies) => MovieList(movies: movies),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text(error.toString())),
      ),
    );
  }
}
