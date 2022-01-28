import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Tabs { home, search, playlist, saved }

class BottomNavigation extends StatelessWidget {
  final Tabs currentTab;
  final ValueChanged<Tabs> didSelectTab;

  const BottomNavigation(
      {Key? key, required this.currentTab, required this.didSelectTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Platform.isIOS ? 85.h : 65.h,
      child: BottomNavigationBar(
        // currentIndex: ,
        unselectedLabelStyle: TextStyle(
            fontSize: 12.sp,
            color: Colors.blue,
            fontWeight: FontWeight.w600,
            height: 1.4),
        selectedLabelStyle: TextStyle(
            fontSize: 12.sp,
            color: Colors.red,
            fontWeight: FontWeight.w600,
            height: 1.4),
        backgroundColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          didSelectTab(Tabs.values.toList()[index]);
        },
        items: [
          _buildItem(Tabs.home, "Home", "selectedIcon", "deSelectedIcon"),
          _buildItem(Tabs.search, "Search", "selectedIcon", "deSelectedIcon"),
          _buildItem(Tabs.playlist, "Playlist", "selectedIon", "deSelctedIcon"),
          _buildItem(Tabs.saved, "Saved", "selecteIcon", "deSelctedIcon")
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildItem(
      Tabs tab, String name, String selectedIcon, String deSelectedIcon) {
    return BottomNavigationBarItem(
        icon:
            SvgPicture.asset(currentTab == tab ? selectedIcon : deSelectedIcon),
        // label: name,
        title: Container(
            child: Text(
          name,
        )));
  }
}
