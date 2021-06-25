import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tteest/model/enum_screens.dart';
import 'package:tteest/screens/dashboard.dart';
import 'package:tteest/screens/home.dart';
import 'package:tteest/screens/settings.dart';
import 'package:tteest/screens/sticky_notes.dart';
import 'package:tteest/screens/support.dart';

class BottomBarManager {
  List<EnumScreens> stackScreen = [];
  //BuildContext contex;
  //BuildContext context;

  static final BottomBarManager _instance = BottomBarManager._internal();

  factory BottomBarManager() {
    return _instance;
  }

  BottomBarManager._internal();

  pushStyle(Widget screen, BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => screen,
        transitionDuration: Duration(seconds: 0),
      ),
    );
  }

  doNavigation(context, screen) {
    {
      switch (screen) {
        //Hamdy review .. separate case login in one function
        case EnumScreens.dashboard:
          pushStyle(Dashboard(), context);
          break;
        case EnumScreens.sticky_notes:
          pushStyle(Stickynotes(), context);
          break;
        case EnumScreens.setting:
          pushStyle(Setting(), context);
          break;
        case EnumScreens.support:
          pushStyle(Support(), context);
          break;
        case EnumScreens.home:
          pushStyle(Home(), context);
          break;
      }
    }
  }

  //Hamdy review .. change name to be openPreviousScreen
  openPreviousScreen(context) {
    if (stackScreen.length == 1) {
      exit(0);
    } else {
      stackScreen.removeLast();
      doNavigation(context, stackScreen.last);
    }
  }

//Hamdy review .. change name to be StackManager only

  onBottomNavigationTap(BuildContext context, int index) {
//Hamdy review .. remove if else as we do not need to remove from list
    if (EnumScreens.values[index] == stackScreen.last) return;

    stackScreen.add(EnumScreens.values[index]);
    doNavigation(context, EnumScreens.values[index]);
  }

  int checkActiveIndex(EnumScreens enumScreens) {
    if (enumScreens == EnumScreens.dashboard) {
      return 0;
    } else if (enumScreens == EnumScreens.sticky_notes) {
      return 1;
    } else if (enumScreens == EnumScreens.setting) {
      return 2;
    } else if (enumScreens == EnumScreens.support) {
      return 3;
    } else {
      return 0;
    }
  }

  onFloatingButtonTap(BuildContext context) {
//Hamdy review .. remove if else as we do not need to remove from list

    stackScreen.add(EnumScreens.values[4]);

    pushStyle(Home(), context);
  }

  addFirstScreenToList() {
    stackScreen.add(EnumScreens.home);
  }
}
