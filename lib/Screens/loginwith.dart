import 'package:flutter/material.dart';
import '../constants.dart';

class LoginWithSocialLogin extends StatefulWidget {
  const LoginWithSocialLogin({Key? key}) : super(key: key);
  @override
  State<LoginWithSocialLogin> createState() => _LoginWithSocialLoginState();
}

class _LoginWithSocialLoginState extends State<LoginWithSocialLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

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
          Text('LOG IN With',style: MyConstants.headingStyle1),
          InkWell(
            onTap: (){
            },
            child: Container(
              height: MediaQuery.of(context).size.width/5,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(
                  color: MyConstants.GreyButtonBgColor,
                  border: Border.all(color: Colors.black)
              ),
              child: Center(
                child: Text('facebook',style: TextStyle(fontSize: 28.0, color: Colors.black),),
              ),
            ),
          ),
          InkWell(
            onTap: (){
            },
            child: Container(
              height: MediaQuery.of(context).size.width/5,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(
                  color: MyConstants.GreyButtonBgColor,
                  border: Border.all(color: Colors.black)
              ),
              child: Center(
                child: Text('instagram',style: TextStyle(fontSize: 28.0, color: Colors.black),),
              ),
            ),
          ),
          InkWell(
            onTap: (){
            },
            child: Container(
              height: MediaQuery.of(context).size.width/5,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(
                  color: MyConstants.GreyButtonBgColor,
                  border: Border.all(color: Colors.black)
              ),
              child: Center(
                child: Text('snapchat',style: TextStyle(fontSize: 28.0, color: Colors.black),),
              ),
            ),
          ),
          InkWell(
            onTap: (){
            },
            child: Container(
              height: MediaQuery.of(context).size.width/5,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(
                  color: MyConstants.GreyButtonBgColor,
                  border: Border.all(color: Colors.black)
              ),
              child: Center(
                child: Text('be real',style: TextStyle(fontSize: 28.0, color: Colors.black),),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){}, child: Text('go',style: MyConstants.bodyStyle)),
              Flexible(child: SizedBox(width: MediaQuery.of(context).size.width/4))
            ],
          ),
          Flexible(child: SizedBox(height: 1,)),
        ],
      ),
    );
  }
}
