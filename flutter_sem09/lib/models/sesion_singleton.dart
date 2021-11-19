class SesionSingleton {
  static final SesionSingleton _singleton = new SesionSingleton._internal();
  int id = 0;
  int userid = 0;
  String correo = "";
  String nombre = "";
  int edad = 0;

  factory SesionSingleton() {
    return _singleton;
  }

  SesionSingleton._internal();
}
