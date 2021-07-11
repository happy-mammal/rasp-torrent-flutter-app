import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rasp_torrent_flutter_app/business_logic/gettorrenbloc/bloc/gettorrent_bloc.dart';
import 'package:rasp_torrent_flutter_app/models/torrentmodel.dart';
import 'package:rasp_torrent_flutter_app/widgets/downloadtile.dart';

class DownloadQueue extends StatelessWidget {
  final List<TorrentModel> torrentlist;
  const DownloadQueue({Key? key, required this.torrentlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: ListView.builder(
        itemCount: torrentlist.length,
        itemBuilder: (BuildContext buildContext, int index) {
          if (torrentlist[index].progress == 100) {
            return Container();
          }
          return DownloadTile(torrent: torrentlist[index]);
        },
      ),
    );
  }
}
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
// BlocConsumer<GetTorrentBloc, GetTorrentState>(
//         listener: (context, state) async {
//       if (state is GetTorrentSuccess) {
//         await Future.delayed(Duration(seconds: 1));
//         BlocProvider.of<GetTorrentBloc>(context).add(FetchTorrentEvent());
//       }
//       // do stuff here based on BlocA's state
//     }, builder: (context, state) {
//       if (state is GetTorrentSuccess) {
//         return Padding(
//           padding: const EdgeInsets.only(top: 20, bottom: 20),
//           child: ListView.builder(
//             itemCount: state.torrentmodels.length,
//             itemBuilder: (BuildContext buildContext, int index) {
//               return DownloadTile(torrent: state.torrentmodels[index]);
//             },
//           ),
//         );
//       }

//       return CircularProgressIndicator(); //MaterialButton(child: Text('hello'), onPressed: () {});
//       // return widget here based on BlocA's state
//     });