import 'dart:async';
import 'dart:convert';

import 'package:quotely/DataModel/quote.dart';
import 'package:http/http.dart' as http;

final String BASE_URL = 'https://quotes.rest/qod.json?';
final String language = 'language=en';
final String category = 'category=inspire';

Future<QuoteData> fetchQuote() async {
  final response = await http.get(BASE_URL + language);

  print(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return QuoteData.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
