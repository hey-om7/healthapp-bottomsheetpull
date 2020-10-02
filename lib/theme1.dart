//import 'package:health_app_for_bottom_navig/theme2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';

class Theme1 extends StatefulWidget {
  @override
  _Theme1State createState() => _Theme1State();
}

class _Theme1State extends State<Theme1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
          //borderRadius: BorderRadius.circular(50)
        ),
        height: (MediaQuery.of(context).size.width<500)?MediaQuery.of(context).size.height*0.6:MediaQuery.of(context).size.height*0.5,
        child: Column(
          children: [

            Expanded(
              flex: 1,
              child: Row(
                children: [

                  Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Text('NEW',style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600
                        ),),
                        Text('APPOINTMENT',style: TextStyle(
                            fontSize: 28
                        ),)
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            gradient: RadialGradient(

                              colors: [
                                Colors.white,
                                Colors.grey[300],
                                // Colors.red,
                                // Colors.blue
                              ],
                              // focalRadius: 0.9

                            ),
                            //color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('M',style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600
                                ),),
                                Text('/23',style: TextStyle(
                                    fontSize: 26
                                ),)
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 15),
                child: Row(
                  children: [
                    Column(

                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(),),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Krishnakant',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600
                              ),),
                              Text('Katare',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w300
                              ),)
                            ],
                          ),
                        ),




                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('17:30',style: TextStyle(
                          fontSize: 23,
                          //fontWeight: FontWeight.w500
                        ),),
                        Text('Old',style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            color: Colors.green
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap:(){
                        Navigator.of(context).pop();
            },
                      child: Image.asset('assets/images/cross buttons.png',width: 30,)),
                  SizedBox(width: 30,),
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                        //BlurredOFF();
                        print('theme1');
                      },
                      child: Image.asset('assets/images/buttons.png',width: 67,)),

                  SizedBox(width: 30,),
                  GestureDetector(
                      onTap: (){
                        // bigname=!bigname;
                        // print(bigname);
                        Navigator.of(context).pop();
                      },

                      child: Image.asset('assets/images/push button.png',width: 30,
                      )
                  ),

                ],
              ),
            )
          ],
        )
    );
  }
}


// class BlurredOFF extends StatefulWidget {
//   @override
//   _BlurredOFFState createState() => _BlurredOFFState();
// }
//
// class _BlurredOFFState extends State<BlurredOFF> {
//   @override
//   void setState(fn) {
//     // TODO: implement setState
//     //super.setState(fn);
//     blurry=false;
//   }
// }
