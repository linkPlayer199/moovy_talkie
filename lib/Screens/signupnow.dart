import 'package:flutter/material.dart';
import 'package:moovy_talkie/Screens/signupnow2.dart';
import '../constants.dart';

class SignUpNow extends StatefulWidget {
  const SignUpNow({Key? key}) : super(key: key);

  @override
  State<SignUpNow> createState() => _SignUpNowState();
}

class _SignUpNowState extends State<SignUpNow> {
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
          SizedBox(
            width: MediaQuery.of(context).size.width/1.2,
            child: TextField(
              style: TextStyle(fontSize: 28.0, height: 2.0, color: Colors.black),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'email',
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupNow2()),
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
                child: Text('Next',style: TextStyle(fontSize: 28.0, color: Colors.black),),
              ),
            ),
          ),
          Flexible(child: SizedBox(height: 1,)),
        ],
      ),
    );
  }
}
