import 'package:flutter/material.dart';
import 'package:ineed/pages/Home.dart';
import 'package:ineed/pages/Homeregistro.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
          children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(image: new AssetImage("assets/images/ineeds.png"), fit: BoxFit.cover,),
                ),
              ),
            Wrap(children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(45.0, 220.0, 30.0, 0.0),
                child: Text("Correo Electronico",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(45.0, 5.0, 45.0, 0.0),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                      contentPadding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
                      filled: true,
                      fillColor: Colors.white,
                  ),
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(45.0, 20.0, 45.0, 0.0),
                child: Text(
                  "Contraseña",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(45.0, 5.0, 45.0, 0.0),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                      contentPadding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
                      filled: true,
                      fillColor: Colors.white,
                  ),
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  width: 180,
                  height: 50.0,
                  child: RaisedButton(
                      child: Text("Iniciar sesion",
                          style: TextStyle(color: Colors.white, fontSize: 14.0)),
                          color: Color.fromRGBO(69, 173, 126, 100),
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)),
                    onPressed: (){
                        print("Iniciar sesion");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  width: 180,
                  height: 50.0,
                  child: RaisedButton(
                      child: Text("Crear una cuenta",
                          style: TextStyle(color: Colors.white, fontSize: 14.0)),
                          color: Color.fromRGBO(69, 173, 126, 100),
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)),
                    onPressed: (){
                      print("Crear cuenta");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Homeregistro()));
                    },
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.fromLTRB(115.0, 10.0, 0.0, 10.0),
                  child: Text("¿Olvidaste tu contraseña?",style: TextStyle(color: Colors.blue),),
                ),
              )
            ],)
          ],
        )
    );
  }

}