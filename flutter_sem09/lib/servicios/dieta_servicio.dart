import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sem09/models/sesion_singleton.dart';
import 'package:flutter_sem09/models/usuario.dart';
import 'package:flutter_sem09/pages/home_page.dart';
import 'package:flutter_sem09/servicios/utility_api.dart';
import 'package:http/http.dart' as http;

class UsuarioService {
  Future cargarDietas(
      TextEditingController nombre, TextEditingController correo) async {
    final response;

    try {
      response = await http.get(Uri.parse(
          UtilityAPI.API_URL + "usuarios/" + SesionSingleton().id.toString()));

      Map<String, dynamic> user = json.decode(response.body);

      if (user.isEmpty) {
        print("Hola");
      } else {
        print(user.toString());
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
