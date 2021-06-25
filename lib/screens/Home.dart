import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tteest/model/enum_screens.dart';
import 'package:tteest/widgets/bottom_navigation_bar.dart';
import 'package:tteest/Widgets/floating_button.dart';
import 'package:tteest/presenter/bottom_bar_manager.dart';
import 'package:tteest/presenter/texts_presenter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextsPresenter _textspresenter = new TextsPresenter();
  BottomBarManager bottomBarManager = new BottomBarManager();
  @override
  void initState() {
    bottomBarManager.addFirstScreenToList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        bottomBarManager.openPreviousScreen(context);
        exit(0);
      },
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          child: Center(
            //Hamdy review .. localization
            child: Text(_textspresenter.applicationtexts.homeScreenTitle),
          ),
        ),
        //Hamdy review .. naming "BottomNavigatioBar"
        bottomNavigationBar: BottomNavigatioBar(
          context: context,
          enumScreens: EnumScreens.home,
        ),
        floatingActionButton: Floatingbutton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
