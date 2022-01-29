import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BookMarkScreen extends StatefulWidget {
  final bool isCurrent;

  const BookMarkScreen({Key? key, required this.isCurrent}) : super(key: key);

  @override
  _BookMarkScreenState createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
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
              automaticallyImplyLeading: true,
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
          body: SafeArea(
            child: Column(
              children: [
                Text(
                  "Bookmark",
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
          ),
        ));
  }
}
