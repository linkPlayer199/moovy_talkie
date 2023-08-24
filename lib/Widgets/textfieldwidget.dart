import 'package:flutter/material.dart';

import '../constants.dart';

class TextFieldWidget extends StatelessWidget {
  double? height;
  double? width;
  double? fontSize;
  String? text;
  Color? color;
   TextFieldWidget({Key? key ,this.height,this.color,  this.width, this.fontSize, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height/14,
      width: width?? MediaQuery.of(context).size.width/3,
      child: TextField(
        style: TextStyle(fontSize: fontSize ?? 22, height: height ?? 1, color: Colors.black),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: text ?? '',
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ),
          fillColor: color ?? MyConstants.GreyButtonBgColor,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ),
        ),
      ),
    );
  }
}
