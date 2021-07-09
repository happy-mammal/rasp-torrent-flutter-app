import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rasp_torrent_flutter_app/presentation/downloadqueue.dart';
import 'package:rasp_torrent_flutter_app/presentation/finishedtorrent.dart';
import 'package:rasp_torrent_flutter_app/widgets/downloadtile.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Rasp Torrent",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              color: Colors.white,
            ),
          ),
          actions: [
            GestureDetector(onTap: () {}, child: Icon(Icons.add)),
            SizedBox(width: 5.h),
            GestureDetector(onTap: () {}, child: Icon(Icons.brightness_4)),
            SizedBox(width: 5.h),
          ],
          bottom: TabBar(
            tabs: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.h),
                child: Text(
                  "Download Queue",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 1.h),
                child: Text(
                  "Finished",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(),
        body: SafeArea(
          child: TabBarView(
            children: [DownloadQueue(), FinishedTorrent()],
          ),
        ),
      ),
    );
  }
}
