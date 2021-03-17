import 'package:componentes5a/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';
import 'package:componentes5a/src/providers/menu_provider.dart';

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
      initialData: [],
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
      //(print(item);
      final temp = ListTile(
        title: Text(item['texto']),
        onTap: () {
          Navigator.pushNamed(context, item['ruta']);
        },
        leading: getIcon(item['icon']),
      );
      /*
      opciones.add(temp);
      opciones.add(Divider(
        height: 30.0,
        color: Colors.white,
      ));
      */
      opciones
        ..add(temp)
        ..add(Divider(
          height: 30.0,
          color: Colors.white,
        ));
    });
    return opciones;
  }
}
