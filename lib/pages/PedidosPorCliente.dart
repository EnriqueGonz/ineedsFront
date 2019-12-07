import 'package:flutter/material.dart';
import 'package:ineed/pages/RegistroLocal.dart';
import 'package:ineed/pages/RegistroEmpresa.dart';
import 'package:http/http.dart' as http;
import 'package:ineed/pages/HomeEmpresa.dart';
import 'dart:async';
import 'dart:convert';

class PedidosPorCliente extends StatefulWidget {
  var idPedido;
  PedidosPorCliente(this.idPedido);


  @override

  _PedidoPorClienteState createState() => new _PedidoPorClienteState();
}
enum Answers { YES, NO, MAYBE }
class _PedidoPorClienteState extends State<PedidosPorCliente> {
  void initState() {
    super.initState();

    getClientes();
  }

  final String url = 'https://4d7b4390.ngrok.io/pedido/pedidosCliente/';
  final token='c009bf67579fd5b2c8a6ab432c8ad006af685e09';
  List data;
  final nameController = TextEditingController();
  final giroController = TextEditingController();
  final descriptionController = TextEditingController();
  bool _sel=false;
  Future<String> getClientes() async {

    http.Response response = await http.get(Uri.encodeFull(url+widget.idPedido.toString()),
        headers: {
          "Authorization": "Token " + token,
          "Accept": "application/json"
        });
    setState(() {
      data = json.decode(response.body);
      print(data);
      print(widget.idPedido);
    });
  }
  Future<String> deletePedido() async {

    http.Response response = await http.delete(Uri.encodeFull(url+data[0]['id'].toString()),
        headers: {
          "Authorization": "Token " + token,
          "Accept": "application/json"
        });
    setState(() {
      data = json.decode(response.body);
      print(data);
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
                              Text('Producto: '+(data[index]["producto_id"].toString()),
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),
                              Text('Cantidad: '+(data[index]["cantidad"].toString()),
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),

                              Text('Status de pedido: '+(data[index]["status"].toString()),
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),
                              Text('Fecha de levantamiento: '+(data[index]["fecha_pedido"].toString()),
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),
                              Text('Fecha de entrega: '+(data[index]["fecha_aprox_entrega"].toString()),
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),
                            ],
                          ),
                          onPressed: () {
                            Future _askUser() async {
                              switch (await showDialog(
                                  context: context,
                                  /*it shows a popup with few options which you can select, for option we
        created enums which we can use with switch statement, in this first switch
        will wait for the user to select the option which it can use with switch cases*/
                                  child: new SimpleDialog(
                                    children: <Widget>[
                                      new SimpleDialogOption(
                                        child: Wrap(
                                          children: <Widget>[
                                            Center(
                                              //child: FligthImageAsset(),

                                            ),

                                            CheckboxListTile(
                                              title: new Text('\n ¿Se realizó el pedido? ',
                                                  style: TextStyle(
                                                      fontSize: 14, fontWeight: FontWeight.bold)),
                                              activeColor: Colors.green,
                                              onChanged: (bool resp){
                                                setState(() {
                                                  _sel=resp;
                                                  print(_sel);
                                                });
                                              },
                                              value: _sel,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    elevation: 10,
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(15)),
                                  ))) {
                                case Answers.YES:
                                  break;
                                case Answers.NO:
                                  break;
                                case Answers.MAYBE:
                                  break;
                              }
                            }

                            _askUser();
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