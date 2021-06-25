import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tteest/model/enum_screens.dart';
import 'package:tteest/model/navigation_items.dart';
import 'package:tteest/presenter/bottom_bar_manager.dart';

// ignore: must_be_immutable
class BottomNavigatioBar extends StatefulWidget {
  BuildContext context;
  EnumScreens enumScreens;

  BottomNavigatioBar({this.context, this.enumScreens});
  @override
  _BottomnavState createState() => _BottomnavState();
}

class _BottomnavState extends State<BottomNavigatioBar> {
  //Hamdy review .. chnage naming
  NavigationItems navigationItems = NavigationItems();
  //BottomBarManager bottomBarManager = new BottomBarManager();
  BottomBarManager bottomBarManager = BottomBarManager();
  //Hamdy review .. naming
  //Hamdy review .. initialize the variable
  //int _bottomNavIndex;
  //var _bottomNavIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
        notchMargin: 10,
        height: 70,
        activeIndex: widget.enumScreens.index,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.sharpEdge,
        leftCornerRadius: 20,
        rightCornerRadius: 20,
        itemCount: navigationItems.itemLenght(),
        tabBuilder: (index, isactive) {
          Color color = widget.enumScreens.index == index
                      ? Colors.black87
                      : Colors.black54;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(navigationItems.getItemIcon(index),
              color: color,
                  size: 30,
                  ),
              Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    //Hamdy review .. separate in a function
                    navigationItems.getItemName(index),
                    style: TextStyle(fontSize: 10, color: color),
                  )),
            ],
          );
        },
        //Hamdy review .. move login in separated function
        onTap: (index) {
          bottomBarManager.onBottomNavigationTap(widget.context, index);
        });
  }
}
