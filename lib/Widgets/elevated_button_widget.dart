import 'package:flutter/material.dart';
class ElevatedButtonWidget extends StatelessWidget {
String buttonName;
Color color = Colors.white;
Color textColor = Colors.white;
double buttonWidth;
double buttonHeight;
ElevatedButtonWidget({String buttonName , Color color , this.textColor , this.buttonWidth , this.buttonHeight}){
  this.buttonName = buttonName;
  this.color = color;
}
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            buttonName,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold
                                ,
                                color: textColor
                                ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: color,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
    );
  }
}