import 'package:flutter/material.dart';

import 'package:rasp_torrent_flutter_app/widgets/finishedtile.dart';

class FinishedTorrent extends StatelessWidget {
  const FinishedTorrent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext buildContext, int index) {
          return FinishedTile();
        },
      ),
    );
  }
}
