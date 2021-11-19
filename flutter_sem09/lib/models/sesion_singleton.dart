class SesionSingleton {
  static final SesionSingleton _singleton = new SesionSingleton._internal();
  int id = 0;
  int userid = 0;
  factory SesionSingleton() {
    return _singleton;
  }

  SesionSingleton._internal();
}
