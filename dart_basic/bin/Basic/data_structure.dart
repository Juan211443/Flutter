void main() {
  // exampleNames();
  setExample();
}

void exampleNames() {
  List<String> names = ["Alice", "Bob", "Charlie", "Diana"];
  var namesList = ["Alice", "Bob", "Charlie", "Diana"];

  print(names[3]);
  print(namesList.last);
  print(names.first);
  print(names.length);
  names[2] = "Eve";
  names.add("Frank");
  names.remove("Alice");
  names.addAll(["Grace", "Hannah"]);
  names.removeAt(1);
  names.clear;
  print(names);
}

void setExample() {
  Set<String> names = {"Alice", "Bob", "Charlie", "Diana"};
  names.add("Alice"); // Duplicate, will not be added
  names.addAll(["Frank", "Grace"]);
  names.remove("Charlie");
  names.contains("aris");
  // names.removeAll();
  names.clear();
  names.add("Eve");
  // names.contains("Alice"); //It is boolean
  bool result = names.contains("Alice");
  print(result ? "Alice is in the set" : "Alice is not in the set");
  print(names.length);

  List<String> newNames = [
    "Grace",
    "Bob",
    "Charlie",
    "Grace",
    "Eve",
    "Frank",
    "Grace",
  ];
  Set<String> newNamesSet = Set.from(newNames);
  print(newNamesSet);
}
