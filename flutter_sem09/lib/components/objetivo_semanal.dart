import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ObjetivoSemanal extends StatelessWidget {
  Widget build(BuildContext contxet) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                  child: Text(
                    "Objetivo semanal",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 63, 99),
                        fontFamily: "Monserrate",
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "Realizar 4 entrenamientos antes del domingo",
                    style: TextStyle(
                      fontFamily: "Monserrate",
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.black38,
                        size: 35,
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.star,
                        color: Colors.black38,
                        size: 35,
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.star,
                        color: Colors.black38,
                        size: 35,
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.star,
                        color: Colors.black38,
                        size: 35,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              /* padding: EdgeInsets.fromLTRB(0, 20, 0, 0), */
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              height: 300,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 35, 0, 35),
                    child: Text(
                      "Entrenamiento recomendado",
                      style: TextStyle(
                          color: Color.fromARGB(255, 27, 63, 99),
                          fontFamily: "Monserrate",
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                          child: Text(
                            "INTERMEDIO",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 2,
                                fontFamily: "Monserrate",
                                fontSize: 13,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(
                            "Repeticiones",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Monserrate",
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(
                            "11 min, 231 calorias",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Monserrate",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Empezar",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 40, 225, 110),
                                  fontSize: 20),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    width: 320,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 40, 225, 110),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ]),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Programa principal",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Monserrate",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Monserrate",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
                Column()
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        showUnselectedLabels: true,
        selectedItemColor: Color.fromARGB(255, 40, 225, 110),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            label: 'Hábitos',
            icon: FaIcon(
              FontAwesomeIcons.leaf,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Ejercicio',
            icon: Icon(
              Icons.directions_run,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Comidas',
            icon: FaIcon(
              FontAwesomeIcons.appleAlt,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Perfil',
            icon: Icon(
              Icons.person,
            ),
          )
        ],
      ),
    );
  }
}
