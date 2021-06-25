import 'package:flutter/material.dart';
import 'package:tteest/model/enum_screens.dart';
import 'package:tteest/presenter/bottom_bar_manager.dart';
import 'package:tteest/widgets/bottom_navigation_bar.dart';
import 'package:tteest/Widgets/floating_button.dart';
import 'package:tteest/widgets/elevated_button_widget.dart';
import 'package:tteest/widgets/textformfield_widget.dart';

class Support extends StatefulWidget {
  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  BottomBarManager bottomBarManager = new BottomBarManager();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => bottomBarManager.openPreviousScreen(context),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white70,
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 70,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 5),
                      child: Text(
                        "Title",
                      ),
                    ),
                    TextFormFieldWidget(
                      maxLines: 1,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 5),
                      child: Text(
                        "Message",
                      ),
                    ),
                    TextFormFieldWidget(
                      maxLines: 7,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Center(
                    child: ElevatedButtonWidget(
                  buttonName: "Send Message",
                  color: Colors.blueAccent[700],
                  textColor: Colors.white,
                )),
              )
            ]),
          ),
          bottomNavigationBar: BottomNavigatioBar(
            context: context,
            enumScreens: EnumScreens.support,
          ),
          floatingActionButton: Floatingbutton(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }
}
