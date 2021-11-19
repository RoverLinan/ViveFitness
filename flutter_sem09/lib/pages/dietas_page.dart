// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_sem09/models/dieta.dart';
import 'package:flutter_sem09/pages/home_page.dart';
import 'package:http/http.dart' as http;

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidgetDietas extends StatefulWidget {
  const MyStatefulWidgetDietas({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidgetDietas> createState() => _DietaPage();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DietaPage extends State<MyStatefulWidgetDietas> {
  TextEditingController inputCorreo = TextEditingController();
  TextEditingController inputPassword = TextEditingController();
  Color coloDietaVegetariana = Colors.white;
  Color coloDietaEstandar = Colors.green.shade600;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: Column(children: <Widget>[
      Container(
          color: Colors.black,
          child: Row(
            children: [
              IconButton(
                  onPressed: onPressedBack, icon: Icon(Icons.arrow_back)),
              Text(
                "1° Día",
                style: new TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto"),
              )
            ],
          )),
      new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          new RaisedButton(
            color: coloDietaEstandar,
            onPressed: _selectButtonEntandar,
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const Text("Dieta estándar",
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal))),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
          ),
          new SizedBox(
            width: 15.0,
          ),
          new RaisedButton(
            color: coloDietaVegetariana,
            onPressed: _selectButtonVegetariano,
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const Text(
                  "Dieta vegetariana",
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal),
                )),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
          )
        ],
      ),
      new SizedBox(
        height: 15.0,
      ),
      Expanded(
        child: ListView(
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(
                      Icons.ac_unit,
                      color: Colors.green,
                    ),
                    title: Text('Desayuno'),
                    subtitle: Text(
                        '*Pan con mermelada \n*Huevo duro   \n*Jugo de limon'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Realizado'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Posponer'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                      leading: Icon(
                        Icons.ac_unit,
                        color: Colors.green,
                      ),
                      title: Text('Almuerzo'),
                      subtitle: Text(
                          '*Ensalada de esparragos \n*Media palta   \n*300 gr de carne \n*Jugo de zanahoria')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Realizado'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Posponer'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(
                      Icons.ac_unit,
                      color: Colors.green,
                    ),
                    title: Text('Ejercicio'),
                    subtitle: Text(
                        '*6 pm \n*10 min   \n*10 planchas \n*Caminar 15 min'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Realizado'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Posponer'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(
                      Icons.ac_unit,
                      color: Colors.green,
                    ),
                    title: Text('Cena'),
                    subtitle: Text(
                        '*Caldo de pollo sin piel   \n*Caminar 15 minutos '),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Realizado'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Posponer'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(
                      Icons.ac_unit,
                      color: Colors.green,
                    ),
                    title: Text('Antes de dormir'),
                    subtitle: Text('*Hacer ejercicios de estiramiento '),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Realizado'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Posponer'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]))));
  }

  _selectButtonEntandar() {
    setState(() {
      this.coloDietaEstandar = Colors.green.shade600;
      this.coloDietaVegetariana = Colors.white;
    });
  }

  _selectButtonVegetariano() {
    setState(() {
      this.coloDietaVegetariana = Colors.green.shade600;
      this.coloDietaEstandar = Colors.white;
    });
  }

  Widget _inputMail() {
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

  Widget _inputPassword() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          controller: inputPassword,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              icon: Icon(Icons.password), labelText: "Contraseña"),
        ),
      );
    });
  }

  Widget _buttonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
        onPressed: _login,
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: const Text("Iniciar sesion")),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      );
    });
  }

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
      */
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const MyStatefulWidget()));
  }

  void onPressedBack() {}
}
