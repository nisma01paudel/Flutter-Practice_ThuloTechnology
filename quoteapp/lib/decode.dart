import 'dart:convert';

import 'package:quoteapp/quotes.dart';
import 'package:http/http.dart' as http;

class Service {
  Future<List<Quotes>> getQuotes() async {
    final response = await http
        .get(Uri.parse('https://jsonguide.technologychannel.org/quotes.json'));
    final json = jsonDecode(response.body).cast<Map<String, dynamic>>();

    return json.map<Quotes>((json) => Quotes.fromJson(json)).toList();
  }
}
