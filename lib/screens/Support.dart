import 'package:flutter/material.dart';
import 'package:tteest/Widgets/Bottom_nav.dart';
import 'package:tteest/Widgets/floating_button.dart';
import 'package:tteest/logic/stack.dart';

class Support extends StatefulWidget {

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
             stack_screen stackk = new stack_screen();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
    onWillPop: () =>
        stackk.remove_nav(context)
  ,
      child: Scaffold(
         body: Center(
           child: Text("Support"),
         ),
         bottomNavigationBar: Bottomnav(),
        floatingActionButton: Floatingbutton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}