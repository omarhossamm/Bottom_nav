import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tteest/model/enum_screens.dart';
import 'package:tteest/widgets/bottom_navigation_bar.dart';
import 'package:tteest/Widgets/floating_button.dart';
import 'package:tteest/presenter/bottom_bar_manager.dart';
import 'package:tteest/widgets/elevated_button_widget.dart';
import 'package:tteest/widgets/textformfield_widget.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  BottomBarManager bottomBarManager = new BottomBarManager();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => bottomBarManager.openPreviousScreen(context),
      child: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.blue,
              tabs: [
                Tab(
                  child: Center(
                    child: Text(
                        "If you needed to edit any data in company settings you must log out first"),
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Colors.grey,
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 5),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: 20, right: 20, top: 25),
                              child: Column(
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, bottom: 10),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("Server"))),
                                  TextFormFieldWidget(
                                    maxLines: 1,
                                    color: Colors.black12,
                                  ),
                                  SizedBox(height: 25),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, bottom: 10),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("Port"))),
                                  TextFormFieldWidget(
                                    maxLines: 1,
                                    color: Colors.black12,
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Text("SSL"),
                                      ),
                                      SizedBox(
                                        width: 70,
                                      ),
                                      CupertinoSwitch(
                                        value: true,
                                        onChanged: (value) {},
                                        activeColor: Colors.green,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 15, 5),
                        child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Container(
                                margin: EdgeInsets.only(
                                    left: 20, right: 20, top: 25),
                                child: Column(children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, bottom: 10),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("Company"))),
                                  TextFormFieldWidget(
                                    maxLines: 1,
                                    color: Colors.black12,
                                  ),
                                  SizedBox(height: 25),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, bottom: 10),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("Device ID"))),
                                  TextFormFieldWidget(
                                    maxLines: 1,
                                    color: Colors.black12,
                                  ),
                                  SizedBox(height: 20),
                                ])))),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButtonWidget(
                      buttonName: "QR Scan",
                      color: Colors.white,
                      textColor: Colors.blueAccent[700],
                      buttonWidth: 220,
                      buttonHeight: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButtonWidget(
                      buttonName: "Check License",
                      color: Colors.white,
                      textColor: Colors.blueAccent[700],
                      buttonWidth: 220,
                      buttonHeight: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButtonWidget(
                      buttonName: "save",
                      color: Colors.green,
                      textColor: Colors.white,
                      buttonWidth: 220,
                      buttonHeight: 40,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ]),
          bottomNavigationBar: BottomNavigatioBar(
            context: context,
            enumScreens: EnumScreens.setting,
          ),
          floatingActionButton: Floatingbutton(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }
}
