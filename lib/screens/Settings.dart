import 'package:flutter/material.dart';
import 'package:tteest/Widgets/Bottom_nav.dart';
import 'package:tteest/Widgets/floating_button.dart';
import 'package:tteest/logic/stack.dart';

class Setting extends StatefulWidget {

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
             child: Text("Setting"),
           ),
        ),
        bottomNavigationBar: Bottomnav(),
        floatingActionButton: Floatingbutton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}