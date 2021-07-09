import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
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
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext buildContext, int index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: Container(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 10.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: GFProgressBar(
                                  percentage: 1,
                                  radius: 60,
                                  circleWidth: 4,
                                  progressBarColor: Colors.green,
                                  animation: true,
                                  animationDuration: 1000,
                                  autoLive: true,
                                  child: Text(
                                    "100%",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.grey[900],
                                    ),
                                  ),
                                  type: GFProgressType.circular,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 2.h),
                                child: SizedBox(
                                  width: 20.h,
                                  height: 9.h,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Bloc From Zero To Hero ",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal,
                                          color: Colors.grey[900],
                                        ),
                                      ),
                                      Text(
                                        "10.00 GB",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          color: Colors.grey[900],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 2.h),
                                child: Icon(
                                  Icons.pause_circle_filled_rounded,
                                  color: Colors.grey[400],
                                  size: 30,
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
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    );
                  },
                ),
              ),
              Text("Yet To Be added"),
            ],
          ),
        ),
      ),
    );
  }
}
