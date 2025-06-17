import 'dart:io';

void main() {
  stdout.write('Escribe tu edad: ');
  int edad = int.parse(stdin.readLineSync()!);
  try {
    var result = validarEdad(edad);
    print("${result.message}, ${result.years} años.");
  } catch (e) {
    print("Error: $e");
  }
}

Age validarEdad(int userAge) {
  try {
    if (userAge < 1) {
      throw Exception("Inserte una edad valida");
    }
    if (userAge < 18) {
      return Age(years: userAge, message: "Eres menor de edad.");
    } else if (userAge >= 18 && userAge < 65) {
      return Age(years: userAge, message: "Eres mayor de edad.");
    } else {
      return Age(years: userAge, message: "Eres un adulto mayor.");
    }
  } on FormatException {
    throw Exception("Error: el valor insertado no es válido.");
  } on Exception catch (e) {
    throw Exception(e);
  }
}

class Age {
  Age({required this.years, required this.message});

  final int years;
  final String message;
}
