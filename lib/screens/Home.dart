import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tteest/Widgets/Bottom_nav.dart';
import 'package:tteest/Widgets/floating_button.dart';
import 'package:tteest/logic/stack.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  stack_screen stackk = new stack_screen();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
     onWillPop: () { 
       
        stackk.remove_nav(context); 
       exit(0);
        },
      
      child: Scaffold(
        body: Container(
          child: Center(
            child: Text("Home"),
          ),
        ),
        bottomNavigationBar: Bottomnav(),
        floatingActionButton: Floatingbutton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
