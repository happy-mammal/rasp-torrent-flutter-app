import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rasp_torrent_flutter_app/business_logic/cubits/theme_cubit/theme_cubit.dart';
import 'package:rasp_torrent_flutter_app/business_logic/gettorrenbloc/bloc/gettorrent_bloc.dart';
import 'package:rasp_torrent_flutter_app/presentation/downloadqueue.dart';
import 'package:rasp_torrent_flutter_app/presentation/finishedtorrent.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<GetTorrentBloc>(context).add(FetchTorrentEvent());
    super.initState();
  }

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
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/addtorrent');
                },
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                )),
            SizedBox(width: 5.h),
            GestureDetector(
                onTap: () {
                  BlocProvider.of<ThemeCubit>(context).setAppTheme();
                },
                child: Icon(Icons.brightness_4, size: 30, color: Colors.white)),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 20.h,
                child: Padding(
                  padding: EdgeInsets.only(top: 13.h,left: 3.h),
                  child: Text(
                    "About devs",
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bg.jpg"),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: CircleAvatar(
                      radius: 4.h,
                      backgroundImage: AssetImage("images/pravin.jpeg"),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "Pravin Nichal",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 3.h),
              GestureDetector(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: SizedBox(
                        width: 3.h,
                        height: 3.h,
                        child: Image.asset("images/instagram.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "Instagram",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.h),
              GestureDetector(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: SizedBox(
                        width: 3.h,
                        height: 3.h,
                        child: Image.asset("images/linkedin.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "LinkedIn",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.h),
              Divider(),
              SizedBox(height: 1.h),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: CircleAvatar(
                          radius: 4.h,
                          backgroundImage: AssetImage("images/yash.jpg"),
                        ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                            "Yash Lalit",
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                    ),

                  ],
                ),
              SizedBox(height: 3.h),
              GestureDetector(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: SizedBox(
                        width: 3.h,
                        height: 3.h,
                        child: Image.asset("images/instagram.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "Instagram",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.h),
              GestureDetector(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: SizedBox(
                        width: 3.h,
                        height: 3.h,
                        child: Image.asset("images/linkedin.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "LinkedIn",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.h),
              Divider(),

            ],
          ),
        ),
        body: SafeArea(
          child: BlocConsumer<GetTorrentBloc, GetTorrentState>(
              listener: (context, state) async {
            if (state is GetTorrentSuccess) {
              await Future.delayed(Duration(seconds: 1));
              BlocProvider.of<GetTorrentBloc>(context).add(FetchTorrentEvent());
            }
            // do stuff here based on BlocA's state
          }, builder: (context, state) {
            if (state is GetTorrentSuccess) {
              return TabBarView(
                children: [
                  DownloadQueue(torrentlist: state.torrentmodels),
                  FinishedTorrent(torrentlist: state.torrentmodels)
                ],
              );
            }
            return TabBarView(children: [
              CircularProgressIndicator(),
              CircularProgressIndicator()
            ]);
          }),
        ),
      ),
    );
  }
}
