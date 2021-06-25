import 'package:flutter/material.dart';
import 'package:tteest/model/enum_screens.dart';
import 'package:tteest/widgets/bottom_navigation_bar.dart';
import 'package:tteest/Widgets/floating_button.dart';
import 'package:tteest/presenter/bottom_bar_manager.dart';
import 'package:tteest/presenter/texts_presenter.dart';

class Stickynotes extends StatefulWidget {
  @override
  _StickynotesState createState() => _StickynotesState();
}

class _StickynotesState extends State<Stickynotes> {
  TextsPresenter _textspresenter = new TextsPresenter();
  BottomBarManager bottomBarManager = new BottomBarManager();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => bottomBarManager.openPreviousScreen(context),
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          child: Center(
            child:
                Text(_textspresenter.applicationtexts.stickyNotesScreenTitle),
          ),
        ),
        bottomNavigationBar: BottomNavigatioBar(
          context: context,
          enumScreens: EnumScreens.sticky_notes,
        ),
        floatingActionButton: Floatingbutton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
