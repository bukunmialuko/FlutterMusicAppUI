import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/res/assets.dart';
import 'package:music_app_ui/res/styles.dart';
import 'package:music_app_ui/screens/root/root_widget.dart';

class SearchScreen extends StatefulWidget {
  final bool isCurrent;
  const SearchScreen({Key? key, required this.isCurrent}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<SearchModel> models = [
    SearchModel(
      image: "assets/png/home/home1.png",
      title: 'Satisfied',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      songs: 2,
      like: 2,
    ),
    SearchModel(
      image: "assets/png/home/home2.png",
      title: 'The Cross: My Gaze',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      songs: 2,
      like: 2,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: !widget.isCurrent,
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.black,
            elevation: 0,
          ),
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: TextFormField(
                    readOnly: true, //false
                    autofocus: false,
                    // style: ,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: const Icon(Icons.search, color: Colors.black),
                      ),
                      prefixIconConstraints: BoxConstraints(maxHeight: 20.w, maxWidth: 35.w),
                      hintText: "Mercy Chinwo",
                      // hintStyle: textFieldPlaceholderTextStyle(context),
                      isDense: true,
                      filled: true,
                      fillColor: Colors.grey,
                      focusedBorder: AppStyles.focusedTransparentBorder,
                      disabledBorder: AppStyles.focusedTransparentBorder,
                      enabledBorder: AppStyles.focusedTransparentBorder,
                      errorBorder: AppStyles.focusedTransparentBorder,
                      focusedErrorBorder: AppStyles.focusedTransparentBorder,
                      errorStyle: errorTextStyle(context),
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    onSaved: (val) {},
                    onEditingComplete: () {},
                    onChanged: (val) {},
                    // validator: (val) {},
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 35.h),
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.only(left: 22.w, right: 23.w),
                    itemBuilder: (c, i) {
                      return SizedBox(
                        height: 90.h,
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 85.w,
                              height: 85.w,
                              margin: EdgeInsets.only(right: 14.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                image: DecorationImage(
                                  image: AssetImage(models[i].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Album - ${models[i].songs} songs - ${models[i].year}",
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
                                  models[i].title,
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Text(
                                  models[i].artist,
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 2.h, right: 4.w),
                                      child: SvgPicture.asset(
                                        Assets.PLAY,
                                        height: 20.w,
                                        width: 20.w,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                      models[i].plays.toString(),
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 12.w),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 2.h, right: 4.w),
                                      child: SvgPicture.asset(
                                        Assets.DOWNLOAD,
                                        height: 20.w,
                                        width: 20.w,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                      models[i].download.toString(),
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 12.w),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 2.h, right: 4.w),
                                      child: SvgPicture.asset(
                                        Assets.HEART,
                                        height: 20.w,
                                        width: 20.w,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                      models[i].plays.toString(),
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 12.w)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (c, i) {
                      return Container(
                        color: Colors.white.withOpacity(0.5),
                        height: 1,
                        margin: EdgeInsets.symmetric(vertical: 12.h),
                      );
                    },
                    itemCount: models.length,
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class SearchModel {
  final String image;
  final int songs;
  final String year;
  final String title;
  final String artist;
  final num plays;
  final num download;
  final num like;

  SearchModel(
      {required this.image,
      required this.songs,
      required this.year,
      required this.title,
      required this.artist,
      required this.plays,
      required this.download,
      required this.like});
}
