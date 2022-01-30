import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app_ui/res/assets.dart';

enum Tabs { home, search, playlist, saved }

extension TabExt on Tabs {
  String get name {
    switch (this) {
      case Tabs.home:
        return "Home";
      case Tabs.search:
        return "Search";
      case Tabs.playlist:
        return "Playlist";
      case Tabs.saved:
        return "Saved";
      default:
        return "";
    }
  }

  String get selectedIcon {
    switch (this) {
      case Tabs.home:
        return Assets.HOME_SELECTED_TAB;
      case Tabs.search:
        return Assets.SEARCH_SELECTED_TAB;
      case Tabs.playlist:
        return Assets.MUSIC_SELECTED_TAB;
      case Tabs.saved:
        return Assets.BOOKMARK_SELECTED_TAB;
      default:
        return "";
    }
  }

  String get unSelectedIcon {
    switch (this) {
      case Tabs.home:
        return Assets.HOME_UNSELECTED_TAB;
      case Tabs.search:
        return Assets.SEARCH_UNSELECTED_TAB;
      case Tabs.playlist:
        return Assets.MUSIC_UNSELECTED_TAB;
      case Tabs.saved:
        return Assets.BOOKMARK_UNSELECTED_TAB;
      default:
        return "";
    }
  }
}

class BottomNav extends StatelessWidget {
  final Tabs currentTab;
  final ValueChanged<Tabs> didSelectTab;
  const BottomNav(
      {Key? key, required this.currentTab, required this.didSelectTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: Platform.isIOS ? 85.h : 70.h,
      child: BottomNavigationBar(
          elevation: 0,
          unselectedLabelStyle: const TextStyle(
              fontSize: 1, fontWeight: FontWeight.w600, height: 1),
          selectedLabelStyle: const TextStyle(
              fontSize: 11, fontWeight: FontWeight.w600, height: 1),
          backgroundColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            didSelectTab(Tabs.values.toList()[index]);
          },
          items: Tabs.values.map((tab) => _buildItem(tab, context)).toList()),
    );
  }

  BottomNavigationBarItem _buildItem(Tabs tab, BuildContext context) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
          currentTab == tab ? tab.selectedIcon : tab.unSelectedIcon),
      label: tab.name,
    );
  }
}
