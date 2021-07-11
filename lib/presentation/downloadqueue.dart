import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rasp_torrent_flutter_app/business_logic/gettorrenbloc/bloc/gettorrent_bloc.dart';

class DownloadQueue extends StatelessWidget {
  const DownloadQueue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetTorrentBloc, GetTorrentState>(
        listener: (context, state) {
      if (state is GetTorrentInitial) {
        print('here');
      }
      // do stuff here based on BlocA's state
    }, builder: (context, state) {
      if (state is GetTorrentSuccess) {
        return Text('success');
      }

      return MaterialButton(
          child: Text('hello'),
          onPressed: () {
            BlocProvider.of<GetTorrentBloc>(context).add(FetchTorrentEvent());
          });
      // return widget here based on BlocA's state
    });
    // (
    //   child: Padding(
    //     padding: const EdgeInsets.only(top: 20, bottom: 20),
    //     child: ListView.builder(
    //       itemCount: 4,
    //       itemBuilder: (BuildContext buildContext, int index) {
    //         return DownloadTile();
    //       },
    //     ),
    //   ),
    // );
  }
}
