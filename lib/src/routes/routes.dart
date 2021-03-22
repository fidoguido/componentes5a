import 'package:flutter/material.dart';

import 'package:componentes5a/src/pages/alerts_pages.dart';
import 'package:componentes5a/src/pages/avatar_page.dart';
import 'package:componentes5a/src/pages/home_page.dart';
import 'package:componentes5a/src/pages/cards_pages.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'cards': (BuildContext context) => CardPage(),
  };
}
