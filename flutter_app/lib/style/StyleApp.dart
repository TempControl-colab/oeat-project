import 'package:flutter/material.dart';

class StyleFullOfApp{


  AppBar MYAPPBAR(){

   return AppBar(
      title: new Text('Stage',
        textAlign: TextAlign.center,
        textScaleFactor: 2.0,
        style: new TextStyle(
            color: Colors.black,
            fontSize: 10.0,
            fontStyle: FontStyle.italic
        ),
      ),
      elevation: 10,//
    );

  }


}

