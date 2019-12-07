import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:ineed/pages/VistaProductos.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}
List data;
class _HomeState extends State<Home> {
  void initState() {
    super.initState();
    getEmpresas();
  }
  final String url = 'https://9860631b.ngrok.io/distribuidora/distribuidoras/';
  final token='c009bf67579fd5b2c8a6ab432c8ad006af685e09';
  List data;

  Future<String> getEmpresas() async {

    http.Response response = await http.get(Uri.encodeFull(url),
        headers: {
          "Authorization": "Token " + token,
          "Accept": "application/json"
        });
    setState(() {
      data = json.decode(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('empresas');
    return new Scaffold(
      drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Color.fromRGBO(43, 57, 62, 10)),
          child: Drawer(
            child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: new Chip(
                      elevation: 1,
                      labelPadding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                      backgroundColor: Color.fromRGBO(69, 173, 126, 100),
                      label: Text(
                        "inees",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    title: Text(
                      'Inicio',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    title: Text(
                      'Notificaciones',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    title: Text(
                      'Mi perfil',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    title: Text(
                      'Mis pedidos',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    leading: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                ]

            ),
          )
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(43, 57, 62, 10),
        title: Text("Vista Empresa"),
      ),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(
                    child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: FlatButton(
                          child: Column(
                            children: <Widget>[
                              Image.network(
                                data[index]["logo"],
                                scale: 1.3,
                              ),
                              Text(data[index]["marca"],
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),
                            ],
                          ),
                          onPressed: () {
                            var id = data[index]["id"];
                            Navigator.push(context, MaterialPageRoute(builder: (context) => VistaProductos(id)));

                          }, //OnPressed
                        ) //FlatButton
                    ), //Container
                  ), //card
                ],
              ), //Colum
            ), //Center
          ); //Container
        },
      ), //Listview

    );
  }
}

