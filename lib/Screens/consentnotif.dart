import 'package:flutter/material.dart';

import '../constants.dart';
import 'consentmicrophone.dart';

class ConsentNotification extends StatelessWidget {
  const ConsentNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(height: MediaQuery.of(context).size.height/8),
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width/1.2,
              decoration: BoxDecoration(
                  color: MyConstants.GreyButtonBgColor,
                  border: Border.all(color: Colors.black)
              ),
              child: Column(
                children: [
                  Flexible(child: SizedBox(height: 30)),
                  Row(
                    children: [
                      Text('    Consent to: Notification',style: TextStyle(fontSize: 18, color: Colors.black),),
                    ],
                  ),
                  Flexible(child: SizedBox(height: 10)),
                  // Row(
                  //   children: [
                  //     Text('    Explanation',style: TextStyle(fontSize: 18.0, color: Colors.black),),
                  //   ],
                  // ),
                ],
              ),
            ),
            Flexible(child: SizedBox(height: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ConsentMicroPhone()),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    decoration: BoxDecoration(
                        color: MyConstants.GreyButtonBgColor,
                        border: Border.all(color: Colors.black)
                    ),
                    child: Center(
                      child: Text('Yes',style: TextStyle(fontSize: 28.0, color: Colors.black),),
                    ),
                  ),
                ),
                Flexible(child: SizedBox(width:  50)),
                InkWell(
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => ConsentGeo()),
                    // );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    decoration: BoxDecoration(
                        color: MyConstants.GreyButtonBgColor,
                        border: Border.all(color: Colors.black)
                    ),
                    child: Center(
                      child: Text('No',style: TextStyle(fontSize: 28.0, color: Colors.black),),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
