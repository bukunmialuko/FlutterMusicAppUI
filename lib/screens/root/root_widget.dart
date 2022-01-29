import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/bookmark/bookmark_screen.dart';
import 'package:music_app_ui/screens/playing/playing_widget.dart';
import 'package:music_app_ui/screens/root/bottom_nav.dart';
import 'package:music_app_ui/screens/home/home_screen.dart';
import 'package:music_app_ui/screens/playlist/playlist_screen.dart';
import 'package:music_app_ui/screens/search/search_screen.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  Tabs currentTab = Tabs.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // fit: StackFit.expand,
        children: [
          HomeScreen(
            isCurrent: currentTab == Tabs.home,
            key: Key(Tabs.home.name),
          ),
          SearchScreen(
            isCurrent: currentTab == Tabs.search,
            key: Key(Tabs.search.name),
          ),
          PlayListScreen(
            isCurrent: currentTab == Tabs.playlist,
            key: Key(Tabs.playlist.name),
          ),
          BookMarkScreen(
            isCurrent: currentTab == Tabs.saved,
            key: Key(Tabs.saved.name),
          ),
          Visibility(
            visible: currentTab == Tabs.home || currentTab == Tabs.playlist,
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: PlayingWidget(),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNav(
        currentTab: currentTab,
        didSelectTab: (tab) {
          setState(() {
            currentTab = tab;
          });
        },
      ),
    );
  }
}
