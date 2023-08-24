import 'package:flutter/material.dart';
import '../constants.dart';
import 'consentgeo.dart';

class SignupNow2 extends StatefulWidget {
  const SignupNow2({Key? key}) : super(key: key);
  @override
  State<SignupNow2> createState() => _SignupNow2State();
}

class _SignupNow2State extends State<SignupNow2> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Text('SIGN UP \n   NOW',style: MyConstants.headingStyle1),
          Text('Check account',style: MyConstants.headingStyle2),
          SizedBox(
            width: MediaQuery.of(context).size.width/1.2,
            child: TextField(
              style: TextStyle(fontSize: 28.0, height: 2.0, color: Colors.black),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'insert code',
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                fillColor: MyConstants.GreyButtonBgColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConsentGeo()),
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.width/5,
              width: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                  color: MyConstants.GreyButtonBgColor,
                  border: Border.all(color: Colors.black)
              ),
              child: Center(
                child: Text('go',style: TextStyle(fontSize: 28.0, color: Colors.black),),
              ),
            ),
          ),
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
              Text('Accept Terms of \nService',style: MyConstants.headingStyle2),
            ],
          ),
          Flexible(child: SizedBox(height: 1,)),
        ],
      ),
    );
  }
}