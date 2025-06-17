import 'dart:io';

void main() {
  // exercise1();
  // exercise2();
  exercise3();
}

void mapExamples() {
  Map<String, int> people = {
    "Alice": 30,
    "Bob": 25,
    "Charlie": 35,
    "Diana": 28,
  };
  people["Aris"] = 76;
  people.addAll({"David": 44, "Miguel": 22});
  people["Pikachu"] = 76;
  people.remove("Pikachu");

  people.containsKey("Aris");
  people.containsValue(32);

  people.length;
  // people.clear();
  print(people);
}

void listLoop() {
  List<int> numbers = [2, 4, 6, 8, 10];
  // for (var i = 0; i < numbers.length; i++) {
  //   print("Numeros con ListLoop: ${numbers[i]}");
  // }
  // for (var number in numbers){
  //   print("Numero: $number");
  // }
  for (var item in numbers) {
    print("Numero: $item");
  }
}

void setLoot() {
  Set<int> numbers = {2, 4, 6, 8, 12};
  for (var number in numbers) {
    print("Numero: $number");
  }
}

void mapLoop() {
  Map<String, int> numbers = {"Camilo": 10, "Juan": 21, "Andres": 12};
  // for (var element in numbers.entries){
  //   print("la clave es ${element.key} y el valor es ${element.value}");
  // }
  numbers.forEach((key, value) {
    print("Llave $key, valor $value");
  });
}

/* Suma de numeros pares en una lista

  Escribe un programa en dart que tome una lista de numeros 
  enteros y calcule la suma de todos los numeros pares en la lista.

  E.g
  Input [1,2,3,4,5]
  Output La cuma de los numeros pares es: 12
*/

void exercise1() {
  stdout.write("Inserte los numeros: ");
  final values = stdin.readLineSync()!;

  if (values.isEmpty) {
    print("Error: Inserta un valor");
    return;
  }

  final parts = values.split(RegExp(r'[,\s]+'));

  try {
    List<int> numbers = parts.map((part) => int.parse(part)).toList();

    List<int> pairsNumbers = [];
    List<int> oddNumbers = [];

    int totalPairsNumbers = 0;
    int totalOddNumbers = 0;

    for (var number in numbers) {
      int value = number % 2;
      if (value == 0) {
        pairsNumbers.add(number);
        totalPairsNumbers += number;
      } else if (value != 0) {
        oddNumbers.add(number);
        totalOddNumbers += number;
      }
    }
    print(
      "Los numeros pares son: $pairsNumbers, la suma total es: $totalPairsNumbers",
    );
    print(
      "Los numeros impares son: $oddNumbers, la suma total es: $totalOddNumbers",
    );
  } on FormatException {
    print("Inserte un valor valio");
  } on Exception catch (e) {
    print(e);
  }
}

/*Filtrar palabras unicas en un Set

  Escribe uin programa en dart que reciba una lista de palabras, algunas
  repetidas y almacene solo las palabras unicas en un Set. Luego, 
  muestra el conjunto resultante.

  e.g
  Input: ["first", "Second", "Thirt", "Second"]
  Output: {Fisrt, second, Thirt}
*/

void exercise2() {
  stdout.write("Inserte palabras: ");
  String input = stdin.readLineSync()!;

  if (input.isEmpty) {
    print("Inserte un texto");
    return;
  }

  try {
    Set<String> words = input.split(RegExp(r'[,\s]+')).toSet();
    print(words);
  } on FormatException {
    print("Inserte un valor valio");
  } on Exception catch (e) {
    print(e);
  }
}

/*Contar la frecuencia de palabras en un map

  Escribe un programa en dart que reciba una lista
  de palabras y cuente cuantas veces aparece cada una,
  almacenando el resultado en un Map 

  e.g
  Input: ["first", "Second", "Thirt", "Second"]
  Output: {Fisrt: 1, Second: 2, Thirt: 1}
*/

void exercise3() {
  stdout.write("Inserte palabras: ");
  String words = stdin.readLineSync()!;

  final cleanWords = words.split(RegExp(r'[,\s]+')).toList();

  Map<String, int> mapperWords = {};
  for (var word in cleanWords){
    mapperWords[word] = (mapperWords[word] ?? 0) + 1;
  }
  print(mapperWords);
}