/* Identificar numeros positivos y negativos:
 
  Escribe un programa en dart que determine si un numero ingresado por el usuario es positivo, negativo o cero.
*/

import 'dart:io';

void main() {
  // indentificadorNumerosSwitch();
  // mesesDelAno();
}

void indentificadorNumerosSwitch() {
  stdout.write("Inserte un numero: ");
  try {
    int number = int.parse(stdin.readLineSync()!);
    switch (number) {
      case 0:
        print("El numero es cero.");
        break;
      case > 0:
        print("El numero es positivo.");
        break;
      case < 0:
        print("El numero es negativo");
        break;
    }
  } on FormatException {
    print("Inserte un valor valido");
  } on Exception catch (e) {
    print(e);
  }
}

void identificarNumerosIf() {
  stdout.write("Inserte un numero: ");
  try {
    int number = int.parse(stdin.readLineSync()!);
    if (number == 0) {
      print("El numero $number es cero.");
    } else if (number > 0) {
      print("El numero $number es positivo");
    } else if (number < 0) {
      print("El numero $number es negativo");
    }
  } on FormatException {
    print("Inserte un valor valido");
  } on Exception catch (e) {
    print(e);
  }
}

/* Validar meses del año:

  Escribe un programa en dart que reciba un numero entre 1 y 12
  e imprima el nombre del mes correspondiente del año.
*/

void mesesDelAno() {
  stdout.write("Inserte un numero de mes: ");
  try {
    int month = int.parse(stdin.readLineSync()!);
    switch (month) {
      case 1:
        print("Enero");
        break;
      case 2:
        print("Febrero");
        break;
      case 3:
        print("Marzo");
        break;
      case 4:
        print("Abril");
        break;
      case 5:
        print("Mayo");
        break;
      case 6:
        print("Junio");
        break;
      case 7:
        print("Julio");
        break;
      case 8:
        print("Agosto");
        break;
      case 9:
        print("Septiembre");
        break;
      case 10:
        print("Octubre");
        break;
      case 11:
        print("Noviembre");
        break;
      case 12:
        print("Diciembre");
        break;
      default:
        throw Exception("Inserte un numero entre 1 y 12");
    }
  } on FormatException {
    print("Inserte un valor valido");
  } on Exception catch (e) {
    print(e);
  }
}

void validarEdad() {
  stdout.write('Escribe tu edad: ');
  String edad = stdin.readLineSync()!;
  try {
    int userAge = int.parse(edad);
    if (userAge < 1) {
      throw Exception("Inserte una edad valida");
    }
    if (userAge < 18) {
      print("Eres menor de edad.");
    } else if (userAge >= 18 && userAge < 65) {
      print("Eres mayor de edad.");
    } else {
      print("Eres un adulto mayor.");
    }
  } on FormatException {
    print("Error: el valor insertado no es válido.");
  } on Exception catch (e) {
    print(e);
  }
}

void usosDelSwitch() {
  stdout.write(
    "Ingrese un número de los dias de la semana, siendo 1 Lunes - 7 Domingo: ",
  );
  try {
    int day = int.parse(stdin.readLineSync()!);
    switch (day) {
      case 1:
        print("Lunes");
        break;
      case 2:
        print("Martes");
        break;
      case 3:
        print("Miércoles");
        break;
      case 4:
        print("Jueves");
        break;
      case 5:
        print("Viernes");
        break;
      case 6:
        print("Sábado");
        break;
      case 7:
        print("Domingo");
        break;
      default:
        throw Exception(
          "El número ingresado no corresponde a un día de la semana.",
        );
    }
  } on FormatException {
    print("El valor insertado no es un número válido.");
  } on Exception catch (e) {
    print(e);
  }
}
