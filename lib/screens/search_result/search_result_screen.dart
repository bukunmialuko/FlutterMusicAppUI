import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/res/assets.dart';
import 'package:music_app_ui/util/navigation/navigation_service.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  _SearchResultScreenState createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            GetIt.I.get<NavigationService>().back();
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
      body: ListView(
        padding: EdgeInsets.only(top: 20.h, left: 24.w, right: 21.w),
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          Center(
            child: Container(
              width: 240.w,
              height: 240.w,
              margin: EdgeInsets.only(right: 14.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                image: const DecorationImage(
                  image: AssetImage(Assets.MERCY_CHINWO),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 22.h),
          Text(
            "Mercy Chinwo",
            textAlign: TextAlign.center,
            style: GoogleFonts.workSans(
              textStyle: TextStyle(
                fontSize: 24.sp,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            "THE CROSS: MY GAZE",
            textAlign: TextAlign.center,
            style: GoogleFonts.workSans(
              textStyle: TextStyle(
                fontSize: 24.sp,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 18.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                "20",
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
                "244",
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
                "50",
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
          ),
          SizedBox(height: 5.h),
          const Divider(color: Color(0x80ffffff)),
          SizedBox(height: 17.h),
          Text(
            "Album:",
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 22.sp,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "THE CROSS: MY GAZE",
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 24.sp,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 25.h),
          Text(
            "Release Date:",
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 22.sp,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "April 12, 2019",
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 24.sp,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 25.h),
          Text(
            "Genre:",
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 22.sp,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "Gospel",
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 24.sp,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
