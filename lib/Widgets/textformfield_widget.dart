import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  int maxLines = 0;
  Color color = Colors.white;
  TextFormFieldWidget({int maxLines , Color color}){
    this.maxLines = maxLines;
    this.color = color;
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          focusColor: color,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: color),
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor:color,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: color),
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
