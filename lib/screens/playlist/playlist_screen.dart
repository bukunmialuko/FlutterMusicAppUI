import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:music_app_ui/models/album_model.dart';
import 'package:music_app_ui/models/song_model.dart';
import 'package:music_app_ui/res/assets.dart';
import 'package:music_app_ui/util/navigation/navigation_service.dart';
import 'package:music_app_ui/util/navigation/routes.dart';

class PlayListScreen extends StatefulWidget {
  final bool isCurrent;

  const PlayListScreen({Key? key, required this.isCurrent}) : super(key: key);

  @override
  _PlayListScreenState createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  var album = AlbumModel(
    id: 1,
    image: "assets/png/home/home1.png",
    title: 'Satisfied',
    artist: 'Mercy Chinwo',
    year: '2021',
    download: 1,
    plays: 2,
    songs: 2,
    genre: "",
    like: 2,
  );

  List<SongModel> songs = [
    SongModel(
      id: 1,
      albumId: 1,
      image: "assets/png/home/home1.png",
      title: 'Chinedum',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      genre: "",
      like: 2,
    ),
    SongModel(
      id: 2,
      albumId: 1,
      image: "assets/png/home/home1.png",
      title: 'No More Pain',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      genre: "",
      like: 2,
    ),
    SongModel(
      id: 3,
      albumId: 1,
      image: "assets/png/home/home1.png",
      title: 'Oh Jesus',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      genre: "",
      like: 2,
    ),
    SongModel(
      id: 4,
      albumId: 1,
      image: "assets/png/home/home1.png",
      title: 'Baby Song',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      genre: "",
      like: 2,
    ),
    SongModel(
      id: 5,
      albumId: 1,
      image: "assets/png/home/home1.png",
      title: 'Udeme',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      genre: "",
      like: 2,
    ),
    SongModel(
      id: 6,
      albumId: 1,
      image: "assets/png/home/home1.png",
      title: 'Tasted Of Your ...',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      genre: "",
      like: 2,
    ),
    SongModel(
      id: 7,
      albumId: 1,
      image: "assets/png/home/home1.png",
      title: 'Obinasom',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      genre: "",
      like: 2,
    )
  ];

  NumberFormat formatter = NumberFormat("00");

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: !widget.isCurrent,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              GetIt.I
                  .get<NavigationService>()
                  .clearAllTo(routeName: Routes.home);
            },
            child: SvgPicture.asset(
              Assets.BACK,
              height: 24,
              width: 24,
              color: const Color(0xffffffff),
              // fit: BoxFit.fill,
            ),
          ),
          automaticallyImplyLeading: true,
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(height: 8.h),
            Container(
              height: 127.r,
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                children: [
                  Container(
                    width: 127.r,
                    height: 127.r,
                    margin: EdgeInsets.only(right: 14.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      image: DecorationImage(
                        image: AssetImage(album.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Album - ${album.songs} songs - ${album.year}",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        album.title,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        album.artist,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.h, right: 4.w),
                            child: SvgPicture.asset(
                              Assets.HEART_OUTLINED,
                              height: 24.w,
                              width: 24.w,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 19.w),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.h, right: 4.w),
                            child: SvgPicture.asset(
                              Assets.DOWNLOAD,
                              height: 24.w,
                              width: 24.w,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.only(top: 17.h),
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemBuilder: (c, i) {
                  return InkWell(
                    onTap: () {
                      GetIt.I
                          .get<NavigationService>()
                          .to(routeName: Routes.playingNow);
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 29.w, right: 34.w),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 22.w),
                            child: i == 2
                                ? Container(
                                    width: 32.2,
                                    height: 29.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      image: const DecorationImage(
                                        image: AssetImage(Assets.MISIC_LEVEL),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                : Text(
                                    formatter.format(i + 1),
                                    maxLines: 1,
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        fontSize: 24.sp,
                                        color: Colors.white,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                songs[i].title,
                                maxLines: 1,
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                songs[i].artist,
                                maxLines: 1,
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            ],
                          )),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.h, right: 4.w),
                            child: SvgPicture.asset(
                              Assets.HEART_OUTLINED,
                              height: 24.w,
                              width: 24.w,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 28.w),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.h, right: 4.w),
                            child: SvgPicture.asset(
                              Assets.DOWNLOAD,
                              height: 24.w,
                              width: 24.w,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (c, i) {
                  return SizedBox(
                    height: 15.h,
                  );
                },
                itemCount: songs.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
