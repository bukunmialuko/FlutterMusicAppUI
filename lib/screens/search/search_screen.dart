import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/models/album_model.dart';
import 'package:music_app_ui/res/assets.dart';
import 'package:music_app_ui/res/styles.dart';
import 'package:music_app_ui/util/navigation/navigation_service.dart';
import 'package:music_app_ui/util/navigation/routes.dart';

class SearchScreen extends StatefulWidget {
  final bool isCurrent;
  const SearchScreen({Key? key, required this.isCurrent}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<AlbumModel> models = [
    AlbumModel(
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
    ),
    AlbumModel(
      id: 2,
      image: "assets/png/home/home2.png",
      title: 'The Cross: My Gaze',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      songs: 2,
      genre: "",
      like: 2,
    ),
    AlbumModel(
      id: 3,
      image: "assets/png/home/home3.png",
      title: 'Yahweh',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      songs: 2,
      genre: "",
      like: 2,
    ),
    AlbumModel(
      id: 4,
      image: "assets/png/home/home4.png",
      title: 'Onyedikagi',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      songs: 2,
      genre: "",
      like: 2,
    ),
    AlbumModel(
      id: 5,
      image: "assets/png/home/home5.png",
      title: 'Igwe',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      songs: 2,
      genre: "",
      like: 2,
    ),
    AlbumModel(
      id: 6,
      image: "assets/png/home/home6.png",
      title: 'Eze',
      artist: 'Mercy Chinwo',
      year: '2021',
      download: 1,
      plays: 2,
      songs: 2,
      genre: "",
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
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 40.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: TextFormField(
                  readOnly: true, //false
                  autofocus: false,
                  // style: ,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 8.h),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: SvgPicture.asset(
                        Assets.SEARCH,
                        height: 24.w,
                        width: 24.w,
                        color: const Color(0xb341416E),
                        // fit: BoxFit.fill,
                      ),
                    ),
                    // prefixIconConstraints: BoxConstraints(
                    //     minHeight: 24.w, maxHeight: 24.w, maxWidth: 35.w),
                    suffixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: SvgPicture.asset(
                        Assets.CLOSE,
                        height: 24.w,
                        width: 24.w,
                        color: Colors.black,
                        // fit: BoxFit.fill,
                      ),
                    ),
                    hintText: "Mercy Chinwo",
                    // hintStyle: textFieldPlaceholderTextStyle(context),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
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
              SizedBox(height: 25.h),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 22.w, right: 23.w),
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemBuilder: (c, i) {
                    return InkWell(
                      onTap: () {
                        GetIt.I
                            .get<NavigationService>()
                            .to(routeName: Routes.searchResult);
                      },
                      child: SizedBox(
                        // height: 90.h,
                        child: Row(
                          children: [
                            Container(
                              width: 85.r,
                              height: 85.r,
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
                                      padding: EdgeInsets.only(
                                          bottom: 2.h, right: 4.w),
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
                                      padding: EdgeInsets.only(
                                          bottom: 2.h, right: 4.w),
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
                                      padding: EdgeInsets.only(
                                          bottom: 2.h, right: 4.w),
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
        ),
      ),
    );
  }
}
