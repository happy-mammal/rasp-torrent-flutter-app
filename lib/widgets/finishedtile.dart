import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rasp_torrent_flutter_app/models/torrentmodel.dart';
import 'package:sizer/sizer.dart';
import 'package:getwidget/getwidget.dart';

class FinishedTile extends StatelessWidget {
  final TorrentModel torrent;
  const FinishedTile({Key? key, required this.torrent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.w, right: 2.w, bottom: 2.h),
      child: Container(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 10.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: GFProgressBar(
                  percentage: torrent.progress.toInt() / 100,
                  radius: 60,
                  circleWidth: 4,
                  progressBarColor: Colors.green,
                  animation: false,
                  autoLive: false,
                  child: Text(
                    torrent.progress.toInt().toString() + '%',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  type: GFProgressType.circular,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: SizedBox(
                  width: 50.w,
                  height: 9.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        torrent.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      SizedBox(
                        height: 0.8.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            (torrent.totalSize > 1048576 &&
                                    torrent.totalSize < 1073741824)
                                ? (torrent.totalSize ~/ 1048576).toString() +
                                    ' MB'
                                : ((torrent.totalSize > 1073741824)
                                    ? (torrent.totalSize / 1073741824)
                                            .toStringAsFixed(2) +
                                        ' GB'
                                    : torrent.totalSize.toString()),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Text(
                            torrent.status.capitalize(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: Icon(
                  Icons.stop,
                  color: Colors.grey[400],
                  size: 8.w,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: Icon(
                  Icons.delete_rounded,
                  color: Colors.redAccent,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
