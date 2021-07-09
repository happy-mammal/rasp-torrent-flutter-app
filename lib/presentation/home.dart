import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rasp_torrent_flutter_app/business_logic/cubits/theme_cubit/theme_cubit.dart';
import 'package:rasp_torrent_flutter_app/presentation/downloadqueue.dart';
import 'package:rasp_torrent_flutter_app/presentation/finishedtorrent.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
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
            GestureDetector(onTap: () {}, child: Icon(Icons.add,size: 30,color: Colors.white,)),
            SizedBox(width: 5.h),
            GestureDetector(onTap: () {
              BlocProvider.of<ThemeCubit>(context).setAppTheme();
            }, child: Icon(Icons.brightness_4,size: 30,color: Colors.white)),
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
        drawer: Drawer(

        ),
        body: SafeArea(
          child: TabBarView(
            children: [DownloadQueue(), FinishedTorrent()],
          ),
        ),
      ),
    );
  }
}
