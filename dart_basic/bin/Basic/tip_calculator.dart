/* Calcular de propina:
  - Escribe un programa en dart que calcule cuanto debe pagar cada cliente despues de dividir la cuenta y agregar una propina.

  Pasos a seguir:
  1. Pedir al usuario el total de la cuenta.
  2. Pedir el porcentaje de propina a cobrar.
  3. Calcular el total a pagar sumando la propina.
  4. Pedir la cantidad por la cual se dividira la cuenta.
  5. Mostar la nueva cuenta.
*/

import 'dart:io';

void main() {
  stdout.write("Ingrese el total de la cuenta: ");
  double total = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el porcentaje de propina: ");
  double tip = double.parse(stdin.readLineSync()!);
  stdout.write("Partes en las que se dividira la cuenta:");
  int parts = int.parse(stdin.readLineSync()!);
  double totalAmount = total + (total * (tip / 100));
  double amount = totalAmount / parts;
  print(
    "Cada cliente debe pagar: \$${amount.toStringAsFixed(2)}, propina: $tip, total: ${totalAmount.toStringAsFixed(2)}.",
  );
}
