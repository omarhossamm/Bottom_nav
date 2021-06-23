import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tteest/logic/Enum_screens.dart';
import 'package:tteest/screens/Dashboard.dart';
import 'package:tteest/screens/Home.dart';
import 'package:tteest/screens/Settings.dart';
import 'package:tteest/screens/Sticky_notes.dart';
import 'package:tteest/screens/Support.dart';

class stack_screen {
  List<screens_enum> screens;
  screens_enum x;
  BuildContext contex;
  static final stack_screen instance = stack_screen.liststack();

  factory stack_screen() {
    return instance;
  }

  stack_screen.liststack() : screens = [];

  check_list(BuildContext context, screens_enum enumscreen) {
    switch (enumscreen) {
      case screens_enum.dashboard:
        {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) => Dashboard(),
              transitionDuration: Duration(seconds: 0),
            ),
          );
        }
        break;
      case screens_enum.sticky_notes:
        Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => Stickynotes(),
                transitionDuration: Duration(seconds: 0)));
        break;
      case screens_enum.setting:
        Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => Setting(),
                transitionDuration: Duration(seconds: 0)));
        break;
      case screens_enum.support:
        Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => Support(),
                transitionDuration: Duration(seconds: 0)));
        break;
      case screens_enum.home:
        Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => Home(),
                transitionDuration: Duration(seconds: 0)));

        break;
    }
  }

  remove_nav(BuildContext context) {
    if (screens.isEmpty) {
      exit(0);
    } else {
      screens.removeLast();
      check_list(context, screens.last);
    }
  }
}
