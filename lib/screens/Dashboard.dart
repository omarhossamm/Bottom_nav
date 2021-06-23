import 'package:flutter/material.dart';
import 'package:tteest/Widgets/Bottom_nav.dart';
import 'package:tteest/Widgets/floating_button.dart';
import 'package:tteest/logic/Enum_screens.dart';
import 'package:tteest/logic/stack.dart';
import 'package:tteest/screens/Settings.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  stack_screen stackk = new stack_screen();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
        stackk.remove_nav(context)

      ,
      child: Scaffold(
        body: Container(
          child: Center(
            child: Text(stackk.screens.toList().toString() +
                '\n' +
                stackk.screens.last.toString()),
          ),
        ),
        bottomNavigationBar: Bottomnav(),
        floatingActionButton: Floatingbutton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
