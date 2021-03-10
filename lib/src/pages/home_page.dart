import 'package:componentes5a/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes App'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearListaItem(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _crearListaItem(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((item) {
      final temp = ListTile(
        title: Text(item['texto']),
        onTap: () {},
      );
      opciones.add(temp);
    });
    return opciones;
  }
}
