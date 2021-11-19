// ignore_for_file: deprecated_member_use, unnecessary_new, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sem09/components/login.dart';
import 'package:flutter_sem09/pages/login_page.dart';
import 'package:flutter/src/material/colors.dart';

class MyStartPage extends StatefulWidget {
  const MyStartPage({Key? key}) : super(key: key);
  @override
  State<MyStartPage> createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyStartPage> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: Scaffold(
      body: new Container(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Flexible(
                      child: Image.asset(
                    "assets/imgs/logo_large.png",
                    width: 200.0,
                    height: 150.0,
                  ))),
              new Container(
                child: new Padding(
                  child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Text(
                                '"No hay cambio de peso, sin cambio de habito"',
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.italic),
                                textAlign: TextAlign.center,
                              )
                            ]),
                        new Padding(
                          padding:
                              const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                        ),
                        new RaisedButton(
                            key: null,
                            onPressed: login,
                            color: Colors.green.shade400,
                            child: new Text(
                              "Iniciar sesion",
                              style: new TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Roboto"),
                            )),
                        new Padding(
                          padding:
                              const EdgeInsets.fromLTRB(24.0, 9.0, 24.0, 9.0),
                        ),
                        new RaisedButton(
                            key: null,
                            onPressed: registro,
                            color: Colors.blue.shade400,
                            child: new Text(
                              "Registrarse",
                              style: new TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Roboto"),
                            )),
                        new Padding(
                          padding:
                              const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 24.0),
                        ),
                        new Text(
                          'Asistensia gratuita en:',
                          style: new TextStyle(
                            fontSize: 16.0,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        new Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0)),
                        new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new IconButton(
                                icon: Image.network(
                                    "http://assets.stickpng.com/images/580b57fcd9996e24bc43c521.png"),
                                onPressed: iconButtonPressed,
                                iconSize: 48.0,
                                color: const Color(0xFF000000),
                              ),
                              new Padding(
                                padding: const EdgeInsets.all(24.0),
                              ),
                              new IconButton(
                                icon: Image.network(
                                    "https://logodownload.org/wp-content/uploads/2014/09/facebook-logo-3-1.png"),
                                onPressed: iconButtonPressed,
                                iconSize: 48.0,
                                color: const Color(0xFF000000),
                              )
                            ])
                      ]),
                  padding: const EdgeInsets.fromLTRB(40.0, 23.0, 41.0, 24.0),
                ),
                padding: const EdgeInsets.all(0.0),
                alignment: Alignment.center,
                width: 300.0,
                height: 400.0,
              )
            ]),
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
      ),
    ));
  }

  void registro() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const MyStatefulWidgetLogin()));
  }

  void login() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Login()));
  }

  void iconButtonPressed() {}
}
