import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rasp_torrent_flutter_app/business_logic/gettorrenbloc/bloc/gettorrent_bloc.dart';

class DownloadQueue extends StatefulWidget {
  const DownloadQueue({Key? key}) : super(key: key);

  @override
  _DownloadQueueState createState() => _DownloadQueueState();
}

class _DownloadQueueState extends State<DownloadQueue> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<GetTorrentBloc>(context).add(FetchTorrentEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetTorrentBloc, GetTorrentState>(
        listener: (context, state) async {
      if (state is GetTorrentSuccess) {
        await Future.delayed(Duration(seconds: 1));
        BlocProvider.of<GetTorrentBloc>(context).add(FetchTorrentEvent());
      }
      // do stuff here based on BlocA's state
    }, builder: (context, state) {
      if (state is GetTorrentSuccess) {
        return Text('success');
      }

      return CircularProgressIndicator(); //MaterialButton(child: Text('hello'), onPressed: () {});
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
