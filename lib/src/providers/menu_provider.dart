import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    //cargaData();
  }
  /*
  cargaData() {
    rootBundle.loadString('data/menu_opts.json').then((datos) {
      print(datos);
    });
  }*/
  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    return dataMap['rutas'];
  }
}

final menuProvider = new _MenuProvider();
