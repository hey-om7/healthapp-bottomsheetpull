//import 'package:health_app_for_bottom_navig/theme2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:health_app_for_bottom_navig/testing.dart';
import 'main.dart';
import 'package:overlay_dialog/overlay_dialog.dart';
import 'package:toast/toast.dart';

class Theme2 extends StatefulWidget {
  @override
  _Theme2State createState() => _Theme2State();
}

class _Theme2State extends State<Theme2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
        ),
        height: (MediaQuery.of(context).size.width<500)?MediaQuery.of(context).size.height*0.6:MediaQuery.of(context).size.height*0.5,
        child: Column(
          children: [

            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('NEW',style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600
                      ),),
                      Text('APPOINTMENT',style: TextStyle(
                          fontSize: 28
                      ),)
                    ],
                  ),
                  Spacer(),

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
                          child: Container(),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Swapnil',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600
                              ),),
                              Text('Katare',style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w300
                              ),)
                            ],
                          ),
                        )



                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,

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
                      ),
                    ),
                    Column(

                      children: [


                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('17:30',style: TextStyle(
                                fontSize: 23,
                                // fontWeight: FontWeight.w500
                              ),),
                              Text('Old',style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.green
                              ),)
                            ],
                          ),
                        ),
                        Expanded(
                          flex:1,
                          child: Container(),
                        ),


                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.of(context).pop();
                        showWarningDialog(context);

                      },
                      child: Image.asset('assets/images/cross buttons.png',width: 30),
                    ),



                    SizedBox(width: 30,),
                    GestureDetector(
                        onTap: (){
                          print('hey');

                          //Navigator.push(context, new MaterialPageRoute(builder: (context)=>TestingMode()));


                          Navigator.of(context).pop();
                          showWarningDialog(context);


                        },
                        child: Image.asset('assets/images/buttons.png',width: 67,)),

                    SizedBox(width: 30,),
                    GestureDetector(
                        onTap: (){
                          // bigname=!bigname;
                          // print(bigname);
                          Navigator.of(context).pop();

                          (context as Element).markNeedsBuild();
                        },

                        child: Image.asset('assets/images/push button.png',width: 30,
                        )
                    ),
                  ],
                ),




                ],
              ),
            )
          ],
        )
    );
  }
}



void showWarningDialog(BuildContext context){

var alertDialog=CupertinoAlertDialog(
  title: Text('Warning'),
  content: Text('Do you want to discard the Appointment?'),
  actions: [
    GestureDetector(



        onTap: (){
          print('pressed yes');
         // Toast.show("Toast plugin app", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
        },
        child: FlatButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text('Yes',style: TextStyle(color: Colors.blue),),)),
    GestureDetector(
        onTap: (){
          Navigator.of(context).pop();
        },

        child: FlatButton(

          onPressed: (){

          },
          child: Text('No',style: TextStyle(color: Colors.blue),),))
  ],
);


showDialog(context: context,
builder: (BuildContext context){
  return alertDialog;
});
}