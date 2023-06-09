import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotes_app_unit_2/models/quotes_api_models.dart';

import '../repositories/quotes_repository.dart';

class QuoteController {
  final QuotesRepository _repo = QuotesRepository();

  Future<List<QuoteApi>> getRandomQuotes() async {
    final data = await _repo.getRandomQuotes();

    return data;
  }
}

final getRandomQuotesProvider = FutureProvider<List<QuoteApi>>((ref) async {
  final controller = QuoteController();
  return controller.getRandomQuotes();
});
