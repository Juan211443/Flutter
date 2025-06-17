/* Calcular la edad:
  - Escribe un programa en dart que pida al usuario su año de nacimiento y calcule su edad actual.

  Pasos a seguir:
  1. Pedir al usuario su año de nacimiento.
  2. Convertir el año de nacimiento a un numero entero.
  3. Calcular la edad restando el año de nacimiento al año actual.
  4. Mostrar el resultado como un mensaje por consola.
*/

import 'dart:io';

void main() {
  int currentYear = DateTime.now().year;
  stdout.write("Ingrese su año de nacimiento para determinar su edad actual: ");
  int year = int.parse(stdin.readLineSync()!);
  int result = currentYear - year;
  print("Tienes $result años de edad.");
}
