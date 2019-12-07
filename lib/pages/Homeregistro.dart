import 'package:flutter/material.dart';
import 'package:ineed/pages/RegistroLocal.dart';

class Homeregistro extends StatefulWidget {
  @override
  _HomeregistroState createState() => new _HomeregistroState();
}

class _HomeregistroState extends State<Homeregistro> {
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
              Wrap(
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 300, 0, 0),
                      child: Text("Registrate como.....",style: TextStyle(color: Colors.white, fontSize: 14.0)),

                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      width: 180,
                      height: 50.0,
                      child: RaisedButton(
                        child: Text("Empresa",
                            style: TextStyle(color: Colors.white, fontSize: 14.0)),
                        color: Color.fromRGBO(69, 173, 126, 100),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)),
                        onPressed: (){
                          print("Registro Empresa");

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
                        child: Text("Local",
                            style: TextStyle(color: Colors.white, fontSize: 14.0)),
                        color: Color.fromRGBO(69, 173, 126, 100),
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)),
                        onPressed: (){
                          print("Registro local");
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegistroLocal()));
                        },
                      ),
                    ),
                  ),
                ],
              )

            ]
        )
    );
  }
}