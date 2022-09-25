
import 'dart:convert';
import 'dart:ffi';
import 'dart:html';

class Examen {
  Long id;
  String token;
  String date;
  String time;
  String period;

  Examen({required this.id, required this.token, required this.date,required this.time,required this.period});

      factory Examen.fromMap(Map examenMap) {
    return Examen(
       token: examenMap['token'],
        date: examenMap['date'],
       id: examenMap['id'],
       time: examenMap['time'],
       period: examenMap['period'],
    );
  }

  // String get codeqr => token;

  // String get dateExamen => date;
  // String get timeExamen => time;
  // String get periodExamen =>period;

}