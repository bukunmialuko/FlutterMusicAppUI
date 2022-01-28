import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/bookmark/bookmark_screen.dart';
import 'package:music_app_ui/screens/home/bottom_navigation.dart';
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Stack(
          children: [
            HomeScreen(
              isCurrent: currentTab == Tabs.home,
              key: Key(Tabs.home.index.toString()),
            ),
            SearchScreen(
              isCurrent: currentTab == Tabs.search,
              key: Key(Tabs.search.index.toString()),
            ),
            PlayListScreen(
              isCurrent: currentTab == Tabs.playlist,
              key: Key(Tabs.playlist.index.toString()),
            ),
            BookMarkScreen(
              isCurrent: currentTab == Tabs.saved,
              key: Key(Tabs.saved.index.toString()),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(
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
