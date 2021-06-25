import 'package:flutter/material.dart';
import 'package:tteest/presenter/bottom_bar_manager.dart';

class Floatingbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BottomBarManager bottomBarManager = new BottomBarManager();

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
        //Hamdy review .. logc needs to be transfered in a separated function
        onPressed: () {
          //Hamdy review .. rename it to stack manager
          //Hamdy review .. transfer logic in stack_screen in a function

          bottomBarManager.onFloatingButtonTap(context);
        },
      ),
    );
  }
}
