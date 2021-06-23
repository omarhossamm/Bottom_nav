import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tteest/logic/Enum_screens.dart';
import 'package:tteest/logic/item_data.dart';
import 'package:tteest/logic/stack.dart';

class Bottomnav extends StatefulWidget {
  @override
  _BottomnavState createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  Itemdata data = new Itemdata();
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
        notchMargin: 10,
        height: 70,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.sharpEdge,
        leftCornerRadius: 20,
        rightCornerRadius: 20,
        itemCount: data.iconList.length,
        tabBuilder: (index, isactive) => Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  data.iconList[index],
                  size: 30,
                  color: Colors.black54,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      data.itemnamed[index],
                      style: TextStyle(fontSize: 10, color: Colors.black54),
                    ))
              ],
            ),
        onTap: (index) => setState(() {
          stack_screen screen = new stack_screen();
          screen.check_list(context, screens_enum.values[index]);
          if (screen.screens.contains(screens_enum.values[index])) {
            
          }else{
          screen.screens.add(screens_enum.values[index]);
          }
        }));
  }
}
