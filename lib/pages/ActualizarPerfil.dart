import 'package:flutter/material.dart';
import 'dart:core';

class ActualizarPerfil extends StatefulWidget {
  @override
  _ActualizarPerfilState createState() => new _ActualizarPerfilState();


}
List data;
class _ActualizarPerfilState extends State<ActualizarPerfil> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(69, 173, 126, 100),
        body: ListView(

          children: <Widget>[
            Container(

              child:
              Card(elevation: 3,margin: EdgeInsets.fromLTRB(37, 50, 37, 30),child: SizedBox(
                width: 350,
                height: 550,
                child: Column(
                  children: <Widget>[
                    Card(
                      elevation: 0,margin: EdgeInsets.fromLTRB(20.0, 50.0, 80.0, 0.0),
                      child: SizedBox(width: 200,height: 50,
                        child: Text(
                          'Mi perfil',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    Card(
                      elevation: 0,
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: SizedBox(
                        width: 280,
                        height: 20,
                        child: Text(
                          "Nombre de Titular",

                          style: TextStyle(
                              fontSize: 13.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: SizedBox(
                        width: 270,
                        height: 35,
                        child: TextFormField(

                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: SizedBox(
                        width: 280,
                        height: 20,
                        child: Text(
                          "Nombre del local",

                          style: TextStyle(
                              fontSize: 13.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: SizedBox(
                        width: 270,
                        height: 35,
                        child: TextFormField(

                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: SizedBox(
                        width: 280,
                        height: 20,
                        child: Text(
                          "RIF",

                          style: TextStyle(
                              fontSize: 13.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: SizedBox(
                        width: 270,
                        height: 35,
                        child: TextFormField(

                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: SizedBox(
                        width: 280,
                        height: 20,
                        child: Text(
                          "Direccion",

                          style: TextStyle(
                              fontSize: 13.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: SizedBox(
                        width: 270,
                        height: 35,
                        child: TextFormField(

                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: SizedBox(
                        width: 280,
                        height: 20,
                        child: Text(
                          "Referencias",

                          style: TextStyle(
                              fontSize: 13.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: SizedBox(
                        width: 270,
                        height: 35,
                        child: TextFormField(

                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: SizedBox(
                        width: 280,
                        height: 20,
                        child: Text(
                          "Numero telefonico",

                          style: TextStyle(
                              fontSize: 13.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: SizedBox(
                        width: 270,
                        height: 35,
                        child: TextFormField(

                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        width: 180,
                        height: 50.0,
                        child: RaisedButton(

                            onPressed: () {

                            },
                            child: Text("Actualizar",
                                style: TextStyle(color: Colors.white, fontSize: 14.0)),
                            color: Color.fromRGBO(53, 139, 100, 100),
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0))

                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                    )
                  ],
                ),
              ),
              ),
            ),
          ],
        ));


  }

}