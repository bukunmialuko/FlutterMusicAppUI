import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/res/assets.dart';

class PlayingWidget extends StatelessWidget {
  const PlayingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
            color: const Color(0xff1B1919),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 55.r,
                height: 55.r,
                margin: EdgeInsets.only(
                    top: 8.h, bottom: 3.h, left: 12.w, right: 15.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  image: const DecorationImage(
                    image: AssetImage(Assets.SPLASH_BACKGROUND_IMG),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Oh Jesus",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      "Oh Jesus",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 120.w,
                height: 54.h,
                margin: EdgeInsets.only(
                    top: 6.w, bottom: 6.w, left: 6.w, right: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Assets.SKIP_BACKWARD,
                      height: 24.w,
                      width: 24.w,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      width: 54.w,
                      height: 54.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Assets.PAUSE),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.SKIP_FORWARD,
                      height: 24.w,
                      width: 24.w,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 2.h,
          child: Stack(
            fit: StackFit.loose,
            children: [
              Container(
                color: Colors.white,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.30,
                color: const Color(0xffB87629),
              )
            ],
          ),
        )
      ],
    );
  }
}
