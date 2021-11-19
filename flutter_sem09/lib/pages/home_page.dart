// ignore_for_file: prefer_const_constructors, prefer_final_fields
// ignore: prefer_const_constructors
// ignore: prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sem09/components/ayuda_page.dart';
import 'package:flutter_sem09/components/mis_publicaciones_page.dart';
import 'package:flutter_sem09/components/objetivo_semanal.dart';
import 'package:flutter_sem09/components/perfil_page.dart';
import 'package:flutter_sem09/pages/dietas_page.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => HomePage();
}

class HomePage extends State<MyStatefulWidget> {
  static List<Widget> _widgetOptions = <Widget>[
    PerfilPage(),
    MisPublicacionesPage(),
    ObjetivoSemanal()
  ];

  static int _indexOptions = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('¡Estamos para ayudarte!'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Image.network(
                "https://statics-cuidateplus.marca.com/cms/dieta.jpg",
                width: 370.0,
              ),
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text('Hola, Roger',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    )),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Perfil'),
                onTap: _optionPerfil,
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Novedades'),
                onTap: _optionMisPublicaciones,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Objetivo semanal'),
                onTap: _optionAyuda,
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StreamBuilder(
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return RaisedButton(
                      color: Colors.amber.shade400,
                      onPressed: _misDietas,
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: const Text("Mis dietas")),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    );
                  }),
                ],
              )
            ],
          ),
        ),
        body: Center(child: _widgetOptions.elementAt(_indexOptions)));
  }

  void _optionPerfil() {
    setState(() {
      _indexOptions = 0;
    });
  }

  void _optionMisPublicaciones() {
    setState(() {
      _indexOptions = 1;
    });
  }

  void _optionAyuda() {
    setState(() {
      _indexOptions = 2;
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ObjetivoSemanal()));
    });
  }

  void _misDietas() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const MyStatefulWidgetDietas()));
  }
}
