import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rasp_torrent_flutter_app/business_logic/gettorrenbloc/bloc/gettorrent_bloc.dart';
import 'package:rasp_torrent_flutter_app/presentation/addtorrent.dart';
import 'package:rasp_torrent_flutter_app/presentation/home.dart';
import 'package:rasp_torrent_flutter_app/provider/torrentprovider.dart';
import 'package:rasp_torrent_flutter_app/repository/torrentrepository.dart';
import 'package:http/http.dart' as http;

class AppRouter {
  final gettorrenbloc = GetTorrentBloc(
    TorrentRepository(
      torrentProvider: TorrentProvider(
        httpClient: http.Client(),
      ),
    ),
  );

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => gettorrenbloc,
            child: HomeScreen(),
          ),
        );

      case '/addtorrent':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => gettorrenbloc,
            child: AddTorrent(),
          ),
        );
    }
  }

  void dispose() {
    gettorrenbloc.close();
  }
}
