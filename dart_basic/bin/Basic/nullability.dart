void nullability() {
  String? name = "Aris";
  name = "";
  name = null;
  String example2 = name ?? "Invitado";
  name ??= "Pepe";
  if (name != null) {
    print("Hola $name");
  }
  
}
