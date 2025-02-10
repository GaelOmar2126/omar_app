import 'package:dart_application_1/persona.dart';

class Estudiante extends Persona {
  String? matricula;
  double? promedio;

  @override
  String toString() {
    return ('Estudiante=> nombre: $nombre, edad: $edad, matricula: $matricula, promedio: $promedio');
  }
}
