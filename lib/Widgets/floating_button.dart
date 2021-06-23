import 'package:flutter/material.dart';
import 'package:tteest/logic/Enum_screens.dart';
import 'package:tteest/logic/stack.dart';
import 'package:tteest/screens/Home.dart';

class Floatingbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black12,
          boxShadow: [
            BoxShadow(color: Colors.white, spreadRadius: 4),
          ],
          borderRadius: BorderRadius.circular(50)),
      child: FloatingActionButton(
        mini: false,
        shape: CircleBorder(),
        backgroundColor: Colors.blueAccent,
        child: Icon(
          Icons.home_repair_service,
          size: 40,
        ),
        onPressed: () {
           stack_screen screen = new stack_screen();
          screen.check_list(context, screens_enum.home);
          if (screen.screens.contains(screens_enum.home)) {
            
          }else{
          screen.screens.add(screens_enum.home);
          }
        },
      ),
    );
  }
}
