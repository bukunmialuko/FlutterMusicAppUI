import 'package:flutter/material.dart';

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
          backgroundColor: Colors.yellow,
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
