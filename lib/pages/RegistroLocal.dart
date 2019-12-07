import 'package:flutter/material.dart';

class RegistroLocal extends StatefulWidget {
  @override
  _RegistroLocalState createState() => new _RegistroLocalState();
}

class _RegistroLocalState extends State<RegistroLocal> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color.fromRGBO(69, 173, 126, 100),
        body: ListView(

          children: <Widget>[
            Container(
              child: Card(
                elevation: 3,
                margin: EdgeInsets.fromLTRB(37, 50, 37, 30),
                child: Wrap(
                  children: <Widget>[
                    Container(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(45.0, 40.0, 0.0, 10.0),
                          child: Text("Bienvenido",
                            style: TextStyle(fontSize: 30.0, color: Colors.black),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45.0, 5.0, 30.0, 10.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                              'Ingresa los datos correspondientes',
                              style: new TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45.0, 5.0, 30.0, 0.0),
                      child: Text("Nombre completo",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45.0, 5.0, 45.0, 0.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                            contentPadding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0)
                        ),
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45.0, 10.0, 45.0, 0.0),
                      child: Text(
                        "Nombre de usuario",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45.0, 5.0, 45.0, 0.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                            contentPadding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0)
                        ),
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45.0, 10.0, 45.0, 0.0),
                      child: Text(
                        "Contraseña",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45.0, 5.0, 45.0, 0.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                            contentPadding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0)
                        ),
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45.0, 10.0, 45.0, 0.0),
                      child: Text(
                        "Nombre local",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45.0, 5.0, 45.0, 0.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                            contentPadding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0)
                        ),
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45.0, 10.0, 45.0, 0.0),
                      child: Text(
                        "Direccion",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45.0, 5.0, 45.0, 0.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                            contentPadding: EdgeInsets.fromLTRB(10.0, 70.0, 0.0, 0.0)
                        ),
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      // padding: EdgeInsets.fromLTRB(10.0, 40.0, 90.0, 0.0),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        width: 180,
                        height: 50.0,
                        child: RaisedButton(

                            onPressed: () {
                            },
                            child: Text("Registrarse",
                                style: TextStyle(color: Colors.white, fontSize: 14.0)),
                            color: Color.fromRGBO(53, 139, 100, 100),
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0))

                        ),
                      ),
                    ),
                    Center(
                      // padding: EdgeInsets.fromLTRB(85.0, 20.0, 85.0, 0.0),

                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 40),
                        width: 180,
                        height: 50.0,
                        child: RaisedButton(
                            onPressed: () {

                            },
                            child: Text("Regresar",
                                style: TextStyle(color: Colors.white, fontSize: 14.0)),
                            color: Color.fromRGBO(53, 139, 100, 100),
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0))
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
       )
    );
  }
}