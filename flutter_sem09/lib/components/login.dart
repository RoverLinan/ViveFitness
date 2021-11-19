import 'package:flutter/material.dart';
import 'package:flutter_sem09/models/usuario.dart';
import 'package:flutter_sem09/pages/home_page.dart';
import 'package:flutter_sem09/servicios/usuario_servicio.dart';

class Login extends StatelessWidget {
  TextEditingController inputCorreo = TextEditingController();
  TextEditingController inputPassword = TextEditingController();
  UsuarioService usuarioService = UsuarioService();

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: Image.asset("assets/images/cabecera-login.jpg",
              width: double.infinity, height: 250, fit: BoxFit.cover),
        ),
        Container(
            child: Align(
          alignment: AlignmentDirectional(0.00, 0.7),
          child: Container(
            height: 525,
            width: 350,
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(75, 0, 0, 0),
              borderRadius: BorderRadius.circular(20),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Color.fromARGB(180, 29, 229, 226),
                width: 3,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/logo_small_icon_only.png",
                    height: 200,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: TextField(
                          controller: inputCorreo,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                letterSpacing: 2,
                                fontSize: 20),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        color: Colors.transparent,
                        child: TextField(
                          controller: inputPassword,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                letterSpacing: 2,
                                fontSize: 20),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.vpn_key_rounded,
                              color: Colors.black,
                            ),
                          ),
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => {
                          usuarioService.login(context,
                              Usuario(inputCorreo.text, inputPassword.text))
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          textStyle: TextStyle(
                              fontFamily: "Monserrate",
                              fontWeight: FontWeight.w300,
                              fontSize: 20),
                        ),
                        child: const Text("Iniciar Sesion"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ))
      ],
    ));
  }
}
