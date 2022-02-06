import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/models/collection_model.dart';
import 'package:music_app_ui/res/assets.dart';
import 'package:music_app_ui/util/navigation/navigation_service.dart';
import 'package:music_app_ui/util/navigation/routes.dart';

class BookMarkScreen extends StatefulWidget {
  final bool isCurrent;

  const BookMarkScreen({Key? key, required this.isCurrent}) : super(key: key);

  @override
  _BookMarkScreenState createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  List<CollectionModel> collection = [
    CollectionModel(id: 1, title: 'Gospel', albums: 2, songs: 7),
    CollectionModel(id: 2, title: 'Party Mix', albums: 29, songs: 227),
    CollectionModel(id: 3, title: 'RnB', albums: 11, songs: 26),
    CollectionModel(id: 4, title: 'Afrobeat', albums: 30, songs: 617),
    CollectionModel(id: 5, title: 'My Playlist', albums: 8, songs: 27),
  ];
  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: !widget.isCurrent,
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              "Saved Collection",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 26.sp,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
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
            automaticallyImplyLeading: false,
            centerTitle: false,
            backgroundColor: Colors.black,
            elevation: 0,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.more_vert_rounded),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
              ),
            ]),
        backgroundColor: Colors.black,
        body: ListView.separated(
          padding: EdgeInsets.only(left: 20.w, right: 16.w, top: 8.h),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          itemBuilder: (c, i) {
            return SizedBox(
              width: 85.w,
              height: 85.w,
              child: Row(
                children: [
                  Container(
                    width: 85.w,
                    height: 85.w,
                    color: const Color(0xff1B1919),
                    margin: EdgeInsets.only(right: 15.w),
                    child: Center(
                      child: SvgPicture.asset(
                        Assets.SONG,
                        height: 40.w,
                        width: 40.w,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 11.h),
                      Text(
                        collection[i].title,
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
                      SizedBox(height: 10.h),
                      Text(
                        "${collection[i].albums} Album | ${collection[i].songs} Songs",
                        maxLines: 1,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 20.sp,
                            color: const Color(0xffB87629),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            );
          },
          separatorBuilder: (c, i) {
            return SizedBox(
              height: 35.h,
            );
          },
          itemCount: collection.length,
        ),
      ),
    );
  }
}
