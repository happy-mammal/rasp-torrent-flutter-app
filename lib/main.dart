import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rasp_torrent_flutter_app/router/approute.dart';

import 'package:sizer/sizer.dart';

void main() {
  runApp(RaspTorrent());
}

class RaspTorrent extends StatefulWidget {
  @override
  _RaspTorrentState createState() => _RaspTorrentState();
}

class _RaspTorrentState extends State<RaspTorrent> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme:
              ThemeData(primaryColor: Colors.green, accentColor: Colors.white),
          onGenerateRoute: _appRouter.onGenerateRoute,
        );
      },
    );
  }

  @override
  void dispose() {
    _appRouter.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
