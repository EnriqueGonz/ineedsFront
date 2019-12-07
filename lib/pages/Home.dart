import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
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
    );
  }
}