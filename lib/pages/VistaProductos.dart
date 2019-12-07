import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class VistaProductos extends StatefulWidget {
  var idEmpresa;
  VistaProductos(this.idEmpresa);


  @override
  _VistaProductosState createState() => new _VistaProductosState();
}

class _VistaProductosState extends State<VistaProductos> {
  void initState() {
    super.initState();
    getProducto();
  }
  final String url = 'https://9860631b.ngrok.io/producto/productosCliente/';
  final token='c009bf67579fd5b2c8a6ab432c8ad006af685e09';
  List data;

  Future<String> getProducto() async {
    http.Response response = await http.get(Uri.encodeFull(url+widget.idEmpresa.toString()),
        headers: {
          "Authorization": "Token " + token,
          "Accept": "application/json"
        });
    print(widget.idEmpresa.toString());
    setState(() {
      print("here");

      data = json.decode(response.body);
      print(data[1]["nombreProducto"]);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length ,
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
                              Text(data[index]["nombreProducto"],
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),
                              Text((data[index]["precio"]),
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),
                              Text(data[index]["descripcion"],
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