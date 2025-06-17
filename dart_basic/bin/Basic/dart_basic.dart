//import 'package:dart_basic/dart_basic.dart' as dart_basic;

void main() {
  variables();
  conversions();
  operations();
}

void variables() {
  // int = Numeros naturales
  int integer = 1234;
  // double = Numeros decimales
  double decimal = 12.312;
  // num = Funciona como un int y un double
  num number = 3.1415;
  // String = Cadena de texto/caracteres
  String firstName = 'Juan';
  String secondName = 'Camilo';
  String text = "I'm $firstName $secondName";
  // bool = Representa un valor Falso o Verdadero
  bool fname = true;
  // dynamic = representa cualquier valor que puede ser modificado a lo largo del flujo
  dynamic name = "JCAP";
  print(name);
  name = true;
  print(name);
  name = 12345;
  print(name);
  name = "Not recommended";
  print(name);
  // Variables inmutables:
  // final = Se asigna una sola vez, su valor se establece en tiempo de ejecucion
  final String example0 = "It is a string";
  // const = Se asigna una sola vez, su valor se establece en tiempo de compilacion
  const String example1 = "It is a string";
}

void conversions() {
  String string = "1";
  int number = int.parse(string);
  print(number);
  number = number + 12.1.toInt();
  print(number);
  String stgValue = number.toString();
  print(stgValue);
  double finalValue = double.parse(stgValue);
  print(finalValue);
}

void operations() {
  int a = 2;
  int b = 4;
  // int result = a + b; Suma
  // int result = a - b; Resta
  // int result = a * b; Multiplicacion
  // int result = a / b; Division
  // int result = a ~/ b; Division sin decimal
  // int result = a % b; Modulo

  // Incrementos
  // a la derecha suma o resta despues de declarado / a la izquierda suma o resta despues de declarado
  a++;
  b--;
}
