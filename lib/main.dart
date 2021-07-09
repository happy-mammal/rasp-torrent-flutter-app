import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rasp_torrent_flutter_app/presentation/home.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(RaspTorrent());
}

class RaspTorrent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
          theme:
              ThemeData(primaryColor: Colors.green, accentColor: Colors.white),
        );
      },
    );
  }
}
