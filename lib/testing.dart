import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show TargetPlatform;

class TestingMode extends StatefulWidget {
  @override
  _TestingModeState createState() => _TestingModeState();
}

class _TestingModeState extends State<TestingMode> {
  String widthScreen;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widthScreen=MediaQuery.of(context).size.width.toString();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Container(
          child: Center(
            child: RaisedButton(
              onPressed: (){

                // CupertinoAlertDialog(
                //   title: Text('Alert Dialog'),
                //   content: Text('u accept?'),
                //   actions: [
                //     FlatButton(
                //       onPressed: (){Navigator.of(context).pop();},
                //       child: Text('hello'),
                //     )
                //   ],
                //
                // );
                // showCupertinoDialog(context: context, builder: AlertDialog());

                dialogPopup(context);


              },

              child: Text(widthScreen),
            ),
          ),
        ),
      ),
    );
  }
}


void dialogPopup(BuildContext context){
  var platform = Theme.of(context).platform;


  if(platform==TargetPlatform.android){
    print('android');
  }else{
    print('ios');
  }



  var alertDialog = platform==TargetPlatform.android?AlertDialog(
    title:Text('Warning!') ,
    content: Text('Do you want to discard this Appointment?'),
    actions: [

      GestureDetector(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: FlatButton(
          onPressed: (){},
          child:
        Text('Yes',style: TextStyle(
          color: Colors.blue,
        ),),
          // onPressed: (){Navigator.of(context).pop();}

        ),
      ),


      GestureDetector(
        onTap: (){
          Navigator.of(context).pop();
          print(platform);
        },
        child: FlatButton(
          onPressed: (){},

          child: Text('No',style: TextStyle(color: Colors.blue),),),
      )





    ],
  ):CupertinoAlertDialog(
    title:Text('Warning!') ,
    content: Text('Do you want to discard this Appointment?'),
    actions: [

      GestureDetector(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: FlatButton(
          onPressed: (){},


          child:
        Text('Yes',style: TextStyle(
          color: Colors.blue,
        ),),
          // onPressed: (){Navigator.of(context).pop();}

        ),
      ),


      GestureDetector(
        onTap: (){
          Navigator.of(context).pop();
          print(platform);
        },
        child: FlatButton(
          onPressed: (){

            

          },
          child: Text('No',style: TextStyle(color: Colors.blue),),),
      )





    ],
  );
  showDialog(context: context,
  builder: (BuildContext context){

    return alertDialog;
  }

  );


}