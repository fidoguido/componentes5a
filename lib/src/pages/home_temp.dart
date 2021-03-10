import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String item in opciones) {
      final tempWiget = ListTile(
        title: Text(item),
        subtitle: Text('Cualquier cosa'),
        leading: Icon(Icons.accessibility),
        trailing: Icon(Icons.ac_unit_rounded),
        onTap: () {},
      );
      lista.add(tempWiget);
    }
    return lista;
  }
}
