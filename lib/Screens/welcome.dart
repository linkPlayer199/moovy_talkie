import 'package:flutter/material.dart';
import 'package:moovy_talkie/Screens/signupnow.dart';
import '../constants.dart';
import 'login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(vsync: this,duration: Duration(seconds: 20))
    ..repeat();
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(child: SizedBox(height: 30,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set the background color to transparent
                  elevation: 0, // Set elevation to 0 to remove the shadow
                ),
                child: Text('Privacy Policy',style: TextStyle(color: Colors.black),),
              ),
              //SizedBox(width: 16), // Add some spacing between the buttons
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set the background color to transparent
                  elevation: 0, // Set elevation to 0 to remove the shadow
                ),
                child: Text('Legal',style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
          Flexible(child: SizedBox(height: MediaQuery.of(context).size.height/20,)),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                    image: DecorationImage(image: NetworkImage(
                        'https://img.freepik.com/premium-vector/world-radar_10606-95.jpg?w=740'),fit: BoxFit.fitHeight)
                ),
                child: RotationTransition(
                  turns: Tween(begin: 0.00,end: 4.0).animate(_controller),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: SweepGradient(
                            center: FractionalOffset.center,
                            colors: <Color>[
                              Colors.transparent,
                              Color(0xFFFFFFFF),
                              Colors.transparent
                            ],
                            stops: <double>[0.20,0.25,0.20]
                        )
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height/4.5,
                left: MediaQuery.of(context).size.width/4,
                child: Text('Welcome',style: TextStyle(
                  color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold
                ),),
              )
            ],

          ),
          Flexible(child: SizedBox(height: MediaQuery.of(context).size.height/20,)),
          TextButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpNow()),
              );
            },
              child: Text('START NOW',style: MyConstants.headingStyle1)),
          Flexible(child: SizedBox(height: 10,)),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text('LOG IN',style: MyConstants.headingStyle1),
          ),

          Flexible(child: SizedBox(height: 10,)),
          Text('social login',style: TextStyle(
            fontSize: 28
          )),
        ],
      ),
    );
  }
}
