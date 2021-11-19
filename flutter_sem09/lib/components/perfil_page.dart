import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(
              'http://www.floriparunners.com.br/wp-content/uploads/Fabiano-perfil-redondo-300x300.png'),
          Padding(
              padding: EdgeInsets.all(25.0),
              child: Center(
                child: Column(
                  children: [
                    Text('Roger Liñan Burgos'),
                    Text('roverlb@live.com'),
                    Text('Trujillo, Perú')
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
