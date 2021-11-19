// ignore_for_file: file_names

class Usuario {
  int id = 0;
  String email = "";
  String password = "";
  String nombre = "";
  DateTime fechaNacimiento = DateTime(2021);
  bool sexo = true;
  int edad = 0;

  Usuario(String email, String password) {
    this.email = email;
    this.password = password;
  }
}
