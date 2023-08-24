import 'package:flutter/material.dart';
import 'package:moovy_talkie/Widgets/buttonwidget.dart';
import 'package:moovy_talkie/Widgets/textfieldwidget.dart';
import '../constants.dart';

class CompleteProfile extends StatefulWidget {
  CompleteProfile({Key? key}) : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  bool _isChecked = false;
  bool _isChecked2 = false;
  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  //primary: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: Text('Legal',style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
          Text('Check account',style: MyConstants.headingStyle2),
          TextFieldWidget(text: 'insert code',width: _width/1.3),
          Text('Choose your public \n      nickname',style: MyConstants.headingStyle2),
          SizedBox(
            width: _width/1.2,
            child: Divider(color: Colors.black,thickness: 1.5),
          ),
          Text('your secret nickname',style: MyConstants.headingStyle2),
          SizedBox(
            width: _width/1.2,
            child: Divider(color: Colors.black,thickness: 1.5),
          ),
          Text('your services',style: MyConstants.headingStyle2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(

                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
              ),
              Text('Carsharing (???)',style: MyConstants.headingStyle2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _isChecked2,
                onChanged: (value) {
                  setState(() {
                    _isChecked2 = value!;
                  });
                },
              ),
              Text('Profiling (???)',style: MyConstants.headingStyle2),
            ],
          ),
          BUttonwidget(text: 'go'),
        ],
      ),
    ));
  }
}
