import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/res/assets.dart';
import 'package:music_app_ui/util/navigation/navigation_service.dart';

class PlayingNowScreen extends StatefulWidget {
  const PlayingNowScreen({Key? key}) : super(key: key);

  @override
  _PlayingNowScreenState createState() => _PlayingNowScreenState();
}

class _PlayingNowScreenState extends State<PlayingNowScreen> {
  int valueHolder = 20;

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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 16.h, left: 20.w, right: 20.w),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.MINISTER_GUC),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(height: 22.h),
            Padding(
              padding: EdgeInsets.only(left: 39.w, right: 39.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    Assets.HEART_OUTLINED,
                    height: 24.w,
                    width: 24.w,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    "Mercy Chinwo",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 24.sp,
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    Assets.DOWNLOAD,
                    height: 24.w,
                    width: 24.w,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              "Minister GUC",
              textAlign: TextAlign.center,
              style: GoogleFonts.workSans(
                textStyle: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.w),
              child: SliderTheme(
                data: SliderThemeData(
                    overlayShape: SliderComponentShape.noOverlay),
                child: Slider(
                    value: valueHolder.toDouble(),
                    min: 1,
                    max: 100,
                    divisions: 100,
                    activeColor: Colors.white,
                    inactiveColor: const Color(0x4fffffff),
                    label: '${valueHolder.round()}',
                    onChanged: (double newValue) {
                      setState(() {
                        valueHolder = newValue.round();
                      });
                    },
                    semanticFormatterCallback: (double newValue) {
                      return '${newValue.round()}';
                    }),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "01:35",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "03:38",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: EdgeInsets.only(left: 42.w, right: 42.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    Assets.SHUFFLE,
                    height: 24.w,
                    width: 24.w,
                    fit: BoxFit.fill,
                  ),
                  SvgPicture.asset(
                    Assets.SKIP_BACKWARD,
                    height: 24.w,
                    width: 24.w,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    width: 74.w,
                    height: 74.w,
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
                  SvgPicture.asset(
                    Assets.REPEAT,
                    height: 24.w,
                    width: 24.w,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            SizedBox(height: 39.h),
          ],
        ),
      ),
    );
  }
}
