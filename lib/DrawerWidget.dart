import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => new _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {

//identifica qual item foi selecionado
 int itemSelect = 0;

//Cria uma listview com os itens do menu
Widget _listMenu() {
    return ListView(
      children: <Widget>[
        _tiles("Início", Icons.home, 0, () {}),
        _tiles("Atributos Salvos", Icons.weekend, 1, () {}),       
      ],
    );
  }

//cria cada item do menu
  Widget _tiles(String text, IconData icon, int item, Function onTap) {
    return ListTile(
      leading: Icon(icon),
      onTap: onTap,
      selected: item == itemSelect,
          title: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.amber,
              child: _listMenu()),
    );
  }
}