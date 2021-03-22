import 'package:componentes5a/src/pages/alerts_pages.dart';
import 'package:flutter/material.dart';

import 'package:componentes5a/src/routes/routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        //print(settings);
        return MaterialPageRoute(
          builder: (context) => AlertPage(),
        );
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        // Define the default font family.
        fontFamily: 'Georgia',
      ),
    );
  }
}
