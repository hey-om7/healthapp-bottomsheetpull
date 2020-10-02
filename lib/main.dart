import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app_for_bottom_navig/testing.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:health_app_for_bottom_navig/theme1.dart';
import 'package:health_app_for_bottom_navig/theme2.dart';
import 'package:flutter/foundation.dart' show TargetPlatform;


void main() {
  runApp(MyApp());

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.transparent,
      ),
      home: Scaffold(
        body: First(),
      ),
    );
  }
}
bool blurry=false;



class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {

  @override
  Widget build(BuildContext context) {

    double deviceHeight= MediaQuery.of(context).size.height;
    return blurry?Container(

      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.fitHeight,
              image: NetworkImage('https://cdn.pixabay.com/photo/2020/08/28/06/13/building-5523630_960_720.jpg')
          )
      ),
      child: BlurryContainer(
        //bgColor: Colors.black,
        child: Center(
          child: RaisedButton(
            child: Text('Bottom Pull'),
            color: Colors.white,
            onLongPress: (){
              print('longPressed!');
              //Navigator.push(context, new MaterialPageRoute(builder: (context)=>TestingMode()));
              print(MediaQuery.of(context).size.width);


            },
            onPressed: (){
              //Navigator.push(context, new MaterialPageRoute(builder: (context)=>Testva()));

              setState(() {
                print('pressed!');
                blurry=false;
                _bottomsheetpop(context);
              });



            },
          ),
        ),
      ),
    ):Container(

        decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: NetworkImage('https://cdn.pixabay.com/photo/2020/08/28/06/13/building-5523630_960_720.jpg')
        )
      ),
      child: Center(
        child: RaisedButton(
          child: Text('Bottom Pull'),
          color: Colors.white,
          onPressed: (){
            setState(() {
              print('pressed!');
              blurry=true;
              _bottomsheetpop(context);
            });

          },
        ),
      ),
    );
  }
}

bool bigname=true;


void _bottomsheetpop(context){

  showModalBottomSheet(context: context, builder: (BuildContext bc){
    return LayoutBuilder(
      builder: (context,constraints){
         return (constraints.maxWidth<500)||(bigname)?Theme1():Theme2();

        // return Theme2();



      },
    );







  });
}



