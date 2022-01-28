import 'package:flutter/material.dart';
import 'package:music_app_ui/res/assets.dart';
import 'package:music_app_ui/screens/root/root_widget.dart';

class SearchScreen extends StatefulWidget {
  final bool isCurrent;
  const SearchScreen({Key? key, required this.isCurrent}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: !widget.isCurrent,
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
          )),
    );
  }
}
