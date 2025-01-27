import 'package:evently/app_theme.dart';
import 'package:evently/tabs/home/home_tab.dart';
import 'package:evently/tabs/love/love_tab.dart';
import 'package:evently/tabs/map/map_tab.dart';
import 'package:evently/tabs/profile/profile_tab.dart';
import 'package:evently/widgets/nav_bar_icon.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    HomeTab(),
    MapTab(),
    LoveTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 0,
        color: AppTheme.primary,
        padding: EdgeInsets.zero,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: NavBarIcon(iconName: 'home'),
                activeIcon: NavBarIcon(iconName: 'home_active'),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: NavBarIcon(iconName: 'map'),
                activeIcon: NavBarIcon(iconName: 'map_active'),
                label: 'Map'),
            BottomNavigationBarItem(
                icon: NavBarIcon(iconName: 'love'),
                activeIcon: NavBarIcon(iconName: 'love_active'),
                label: 'Love'),
            BottomNavigationBarItem(
                icon: NavBarIcon(iconName: 'profile'),
                activeIcon: NavBarIcon(iconName: 'profile_active'),
                label: 'Profile'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          size: 36,
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
