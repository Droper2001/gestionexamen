
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'globals.dart';

import 'package:scan/Services/globals.dart';

import '../Models/Examen.dart';

class DatabaseService{
  late String token ;

static Future<List<Examen>> getExamessById(String ) async {
    var url = Uri.parse(baseURL);
    http.Response response = await http.get(
      url,
      headers: headers,
    );
    print(response.body);
    List responseList = jsonDecode(response.body);
    List<Examen> examens = [];
    for (Map examenMap in responseList) {
      Examen examen = Examen.fromMap(examenMap);
      examens.add(examen);
    }
    return examens;
  }


}