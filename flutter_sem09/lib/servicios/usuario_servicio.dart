import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sem09/models/sesion_singleton.dart';
import 'package:flutter_sem09/models/usuario.dart';
import 'package:flutter_sem09/pages/home_page.dart';
import 'package:flutter_sem09/servicios/utility_api.dart';
import 'package:http/http.dart' as http;

class UsuarioService {
  Future login(BuildContext context, Usuario usuario) async {
    final response;

    try {
      response = await http.post(
          Uri.parse(UtilityAPI.API_URL + "usuarios/authFlutter"),
          body: {"correo": usuario.email, "password": usuario.password});

      Map<String, dynamic> user = json.decode(response.body);

      if (user.isEmpty) {
        print("Hola");
      } else {
        print(user['correo']);

        var sesion = SesionSingleton();
        sesion.id = user['id'];
        print(sesion.id);

        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const MyStatefulWidget()));
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
