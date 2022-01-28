import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app_ui/res/assets.dart';
import 'dart:io';

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
        return Assets.MENU_SELECTED_TAB;
      case Tabs.playlist:
        return Assets.INBOX_SELECTED_TAB;
      case Tabs.saved:
        return Assets.ACCOUNT_SELECTED_TAB;
      default:
        return "";
    }
  }

  String get unSelectedIcon {
    switch (this) {
      case Tabs.home:
        return Assets.HOME_UNSELECTED_TAB;
      case Tabs.search:
        return Assets.MENU_UNSELECTED_TAB;
      case Tabs.playlist:
        return Assets.INBOX_UNSELECTED_TAB;
      case Tabs.saved:
        return Assets.ACCOUNT_UNSELECTED_TAB;
      default:
        return "";
    }
  }
}

class BottomNav extends StatelessWidget {
  final Tabs currentTab;
  final ValueChanged<Tabs> didSelectTab;

  BottomNav({required this.currentTab, required this.didSelectTab});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Platform.isIOS ? 85.h : 65.h,
      child: BottomNavigationBar(
          // currentIndex: ,
          unselectedLabelStyle: inActiveTextStyle(context),
          selectedLabelStyle: activeTextStyle(context),
          backgroundColor: Colors.green,
          showSelectedLabels: true,
          showUnselectedLabels: true,
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
      // ignore: deprecated_member_use
      title: Container(
        child: Text(tab.name,
            style: currentTab == tab
                ? activeTextStyle(context)
                : inActiveTextStyle(context)),
      ),
    );
  }

  activeTextStyle(context) => TextStyle(
      fontSize: 12,
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.w600,
      height: 1.4);
  inActiveTextStyle(context) => TextStyle(
      fontSize: 12,
      color: const Color(0XFFD4E1F5),
      fontWeight: FontWeight.w600,
      height: 1.4);
}
