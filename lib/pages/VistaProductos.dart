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

  final TextEditingController cantidadController = TextEditingController();
  void initState() {
    super.initState();
    getProducto();
  }
  final String url = 'https://57507136.ngrok.io/producto/productosCliente/';
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
  Future<String> peticionPedido(String id,String cantidad) async {
    print('Recivo:'+id+cantidad);
    http.Response response = await http.post(Uri.encodeFull('https://57507136.ngrok.io/pedido/pedidos/'),
        body: {
        'producto_id' : id,
        'cliente_id'  : '1',
          'cantidad' : cantidad,
          'fecha_pedido' : '2019-11-07',
          'fecha_aprox_entrega' : '2019-15-10',
        },
      headers: {
        "Authorization": "Token " + token,
        "Accept": "application/json"
      },
    );
    setState(() {
      print("Se hizo pedido");
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
                              Text("Precio: "+(data[index]["precio"]),
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),
                              Text(data[index]["descripcion"],
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.black87)),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                  width: 180,
                                  height: 50.0,
                                  child: RaisedButton(
                                    child: Text("Añadir producto",
                                        style: TextStyle(color: Colors.white, fontSize: 14.0)),
                                    color: Color.fromRGBO(69, 173, 126, 100),
                                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)),
                                    onPressed: (){
                                      print("Pedir producto"+data[index]["id"].toString());
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
                                                      Text(
                                                        '¿Cuantos productos decea añadir?',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      Text(
                                                        '*Nota* se tomaran los pedidos apartir de 20 unidades',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      TextField(
                                                        controller: cantidadController,
                                                        decoration: InputDecoration(
                                                            border: OutlineInputBorder(),
                                                            contentPadding:
                                                            EdgeInsets.fromLTRB(5, 16, 0, 0)),
                                                      ),



                                                      Center(
                                                        child: RaisedButton(
                                                          color: Color.fromRGBO(30, 126, 222, 10),
                                                          onPressed: () {
                                                            Navigator.pop(context);
                                                            setState(() {
                                                              print('Enviamos:'+data[index]["id"].toString()+cantidadController.text);
                                                              peticionPedido(data[index]["id"].toString(), cantidadController.text);
                                                            });
                                                          },
                                                          child: const Text('Confirmar',
                                                              style:
                                                              TextStyle(color: Colors.white)),
                                                          shape: new RoundedRectangleBorder(
                                                              borderRadius:
                                                              new BorderRadius.circular(15)),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                              elevation: 10,
                                              shape: new RoundedRectangleBorder(
                                                  borderRadius: new BorderRadius.circular(15)),
                                            ))) {
                                          case "YES":
                                            break;
                                          case "NO":
                                            break;
                                        }
                                      }
                                      _askUser();
                                    },
                                  ),
                                ),
                              ),
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