
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  const Env._();

  static String get baseUrl =>
      dotenv.env['TMDB_BASE_URL'] ?? '';

  static String get apiKey =>
      dotenv.env['TMDB_API_KEY'] ?? '';
}