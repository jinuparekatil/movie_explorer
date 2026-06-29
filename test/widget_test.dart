import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:movie_explorer/app/app.dart';

void main() {
  testWidgets('displays Movie Explorer title', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: MovieExplorerApp()));

    expect(find.text('Movie Explorer'), findsOneWidget);
  });
}
