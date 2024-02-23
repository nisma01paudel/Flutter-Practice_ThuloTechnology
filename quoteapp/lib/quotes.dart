// To parse this JSON data, do
//
//     final quotes = quotesFromJson(jsonString);

import 'dart:convert';

List<Quotes> quotesFromJson(String str) =>
    List<Quotes>.from(json.decode(str).map((x) => Quotes.fromJson(x)));

String quotesToJson(List<Quotes> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Quotes {
  String text;
  String from;

  Quotes({
    required this.text,
    required this.from,
  });

  factory Quotes.fromJson(Map<String, dynamic> json) => Quotes(
        text: json["text"],
        from: json["from"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "from": from,
      };
}
