

import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'home.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key,  required this.title}) : super(key: key);

  final String title;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: [HexColor("#f0f6e6"),Colors.white],
            begin: const FractionalOffset(0, 0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: AnimatedOpacity(
          opacity:  1.0 ,
          duration: Duration(milliseconds: 1200),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Container(


                  child: Column(
                    children: [
                      Center(
                         child: Image(image: AssetImage('assets/img/Group664.png',) ) //put your logo here

                      ),


                    ],
                  ),

                ),

Container(
  margin: EdgeInsets.only(
      top: 150,
      bottom: 40
  ),

  height: 50,
  width: 350,

  child:   RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),

        color: Colors.indigo,
        child: Text("أبدأ",style: TextStyle(fontSize: 20,color: Colors.white),),
        onPressed: (){
          Navigator.push( context, MaterialPageRoute( builder: (context) => Home()), );



        }),
)
              ],
            ),
          ),
        ),
      ),
    );
  }
}