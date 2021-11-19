// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_sem09/models/usuario.dart';
import 'package:flutter_sem09/pages/home_page.dart';
import 'package:flutter_sem09/servicios/usuario_servicio.dart';
import 'package:http/http.dart' as http;

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidgetLogin extends StatefulWidget {
  const MyStatefulWidgetLogin({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidgetLogin> createState() => _LoginPage();
}

/// This is the private State class that goes with MyStatefulWidget.
class _LoginPage extends State<MyStatefulWidgetLogin> {
  TextEditingController inputCorreo = TextEditingController();
  TextEditingController inputPassword = TextEditingController();
  TextEditingController inputEdad = TextEditingController();
  TextEditingController inputNombre = TextEditingController();
  UsuarioService usuarioService = UsuarioService();
  late Usuario usuario;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: Column(children: <Widget>[
      SizedBox(
        height: 30.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "REGISTRATE",
            style: TextStyle(fontSize: 30.0),
          )
        ],
      ),
      SizedBox(
        height: 70.0,
      ),
      _inputNombre(),
      _inputCorreo(),
      _inputPassword(),
      _inputEdad(),
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: _buttonLogin(),
      )
    ]))));
  }

  Widget _inputNombre() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          controller: inputNombre,
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              icon: Icon(Icons.email), labelText: "Nombre"),
        ),
      );
    });
  }

  Widget _inputCorreo() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          controller: inputCorreo,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              icon: Icon(Icons.email), labelText: "Correo"),
        ),
      );
    });
  }

  Widget _inputEdad() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          controller: inputEdad,
          keyboardType: TextInputType.number,
          decoration:
              const InputDecoration(icon: Icon(Icons.email), labelText: "Edad"),
        ),
      );
    });
  }

  Widget _inputPassword() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          controller: inputPassword,
          keyboardType: TextInputType.visiblePassword,
          decoration: const InputDecoration(
              icon: Icon(Icons.password), labelText: "Password"),
        ),
      );
    });
  }

  Widget _buttonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
        color: Colors.green,
        onPressed: () => {registrar()},
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: const Text(
              "Registrarse",
              style: TextStyle(fontSize: 18.0),
            )),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      );
    });
  }

  /*
  Future _login() async {
    /*
    final response = await http.post(
        Uri.parse("http://127.0.0.1:8080/api/usuarios/"),
        body: {"correo": inputCorreo.text, "password": inputPassword.text});

    Map<String, dynamic> user = json.decode(response.body);

    if (user.isEmpty) {
      print("Hola");
    } else {
      print(user.toString());
    } */
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const MyStatefulWidget()));
  }
  */

  void registrar() {
    Usuario usuario = Usuario(inputCorreo.text, inputPassword.text);
    usuario.edad = int.parse(inputEdad.text);
    usuario.nombre = inputNombre.text;

    UsuarioService usuarioService = UsuarioService();
    try {
      usuarioService.registrar(context, usuario);
    } catch (e) {
      print(e.toString());
    }
  }
}
