import 'package:flutter/material.dart';
import '../constants.dart';

class BUttonwidget extends StatelessWidget {
  double? height;
  double? width;
  double? fontSize;
  String? text;
  Color? color;
  void Function()? ontap;
   BUttonwidget({Key? key,  this.height,this.color,  this.width, this.fontSize,this.ontap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap,
      child: Container(
        height: height ?? MediaQuery.of(context).size.height/14,
        width:width?? MediaQuery.of(context).size.width/3,
        decoration: BoxDecoration(
            color: color ?? MyConstants.GreyButtonBgColor,
            border: Border.all(color: Colors.black)
        ),
        child: Center(
          child: Text(text ?? "",style: TextStyle(fontSize: fontSize ?? 28.0, color: Colors.black),),
        ),
      ),
    );
  }
}

