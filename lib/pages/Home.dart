import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:core';

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
  final token='4e6929177868ab78d301f0b85083cd2d04af5f9b';
  List data;

  Future<String> getEmpresas() async {
    print("Hola");
    http.Response response = await http.get(Uri.encodeFull(url),
        headers: {
          "Authorization": "Token " + token,
          "Accept": "application/json"
        });
    setState(() {
      print(data);
      data = json.decode(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
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
         ]

            ),
          )
        ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(43, 57, 62, 10),
        title: Text("Vista cliente"),
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
                              Text(data[index]["marca"],
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),
                            ],
                          ),
                          onPressed: () {

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