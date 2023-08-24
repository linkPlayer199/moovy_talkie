import 'package:flutter/material.dart';

import '../Widgets/buttonwidget.dart';
import '../Widgets/textfieldwidget.dart';
import '../constants.dart';
import 'completeprofile.dart';

class SetProfile extends StatefulWidget {
  const SetProfile({Key? key}) : super(key: key);

  @override
  State<SetProfile> createState() => _SetProfileState();
}

class _SetProfileState extends State<SetProfile> {
  bool photo=false;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
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
            Text('WELCOME',style: MyConstants.headingStyle1),
            Flexible(child: SizedBox(height: 10)),
            Text('complete your profile',style: MyConstants.headingStyle2),
            Flexible(child: SizedBox(height: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFieldWidget(text: 'email'),
                TextFieldWidget(text: 'born'),

              ],
            ),
            Flexible(child: SizedBox(height: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFieldWidget(text: 'tel'),
                TextFieldWidget(text: 'country'),
              ],
            ),
            Flexible(child: SizedBox(height: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFieldWidget(text: 'name'),
                TextFieldWidget(text: 'city'),

              ],
            ),
            Flexible(child: SizedBox(height: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFieldWidget(text: 'second name',fontSize: 15),
                // BUttonwidget(text: 'second \n name',fontSize: 20, ontap: (){
                //   setState(() {
                //     photo=false;
                //   });
                // },),
                BUttonwidget(text: 'photo',color: photo? MyConstants.primaryColor : MyConstants.GreyButtonBgColor,ontap: (){
                  setState(() {
                    photo=true;
                  });
                }),
              ],
            ),
            Flexible(child: SizedBox(height: 10)),
            Divider(
              color: Colors.black,
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),
            photo?  Container(
             width: _width,
             height: _height/3,
             color: Colors.grey,
             child: Center(child: InkWell(
                 onTap: (){
                   setState(() {
                     photo =false;
                   });
                 },
                 child: Text('upload photo',style: MyConstants.headingStyle1,))),): Container(
              width: _width,
              height: _height/3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [BUttonwidget(text: 'car'),BUttonwidget(text: 'running'),],
                  ),
                  BUttonwidget(text: 'bike'),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [BUttonwidget(text: 'public \ntransport',fontSize: 20),BUttonwidget(text: 'motorcycle',fontSize: 20),],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CompleteProfile()),
                  );
                }, child: Text('go',style: MyConstants.bodyStyle)),
                Flexible(child: SizedBox(width: MediaQuery.of(context).size.width/4))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
