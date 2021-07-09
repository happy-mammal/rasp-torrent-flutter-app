import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rasp_torrent_flutter_app/presentation/home.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }

  void dispose() {}
}
