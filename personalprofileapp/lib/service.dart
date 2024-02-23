import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:personalprofileapp/personmodel.dart';

class LocalService {
  Future<String> getjson() async {
    return await rootBundle.loadString('assests/info.json');
  }

  Future<Person> loadPerson() async {
    String jsonString = await getjson();
    final jsonDecoded = json.decode(jsonString);
    return Person.fromJson(jsonDecoded);
  }
}
