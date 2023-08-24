import 'package:flutter/material.dart';

import '../constants.dart';
import 'loginwith.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  primary: Colors.transparent,
                  elevation: 0,
                ),
                child: Text('Legal',style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
          Text('LOG IN',style: MyConstants.headingStyle1),
          SizedBox(
            width: MediaQuery.of(context).size.width/1.2,
            child: TextField(
              style: TextStyle(fontSize: 28.0, height: 2.0, color: Colors.black),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'email or tel.',
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
          SizedBox(
            width: MediaQuery.of(context).size.width/1.2,
            child: TextField(
              style: TextStyle(fontSize: 28.0, height: 2.0, color: Colors.black),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'password',
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

            },
            child: Container(
              height: MediaQuery.of(context).size.width/5,
              width: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                  color: MyConstants.GreyButtonBgColor,
                  border: Border.all(color: Colors.black)
              ),
              child: Center(
                child: Text('enter',style: TextStyle(fontSize: 28.0, color: Colors.black),),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginWithSocialLogin()),
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.width/5,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(
                  color: MyConstants.GreyButtonBgColor,
                border: Border.all(color: Colors.black)
              ),
              child: Center(
                child: Text('social login',style: TextStyle(fontSize: 28.0, color: Colors.black),),
              ),
            ),
          ),
          Flexible(child: SizedBox(height: 1,)),
        ],
      ),
    );
  }
}
