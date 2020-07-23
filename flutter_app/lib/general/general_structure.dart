import 'package:flutter/material.dart';
import 'package:flutterapp/elementsArgument/Elements.dart';
import 'package:flutterapp/style/StyleApp.dart';

class GeneralStructure{
  


  Elements _ELEMENTSARG;

  StyleFullOfApp _STYLEFULL;

  MaterialApp myMaterialAppFonction(StatefulWidget home){

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.blue,

      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),

      debugShowCheckedModeBanner: false,
      home: home,
    );
  }





  Widget myBodyBuild(
      Widget bodyCreator) {
     // Widget drawerCreator) {

    return Scaffold(
      appBar: _ELEMENTSARG.APPBARSHOW == true ? _STYLEFULL.MYAPPBAR():null,
      //drawer: drawerCreator,
      body: Center(
        child: Stack(
          children: [
            Center(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: _ELEMENTSARG.ALIGNEMENTSTART,
                          end: _ELEMENTSARG.ALIGNEMENTEND,
                          colors: [_ELEMENTSARG.COLORSRED,_ELEMENTSARG.COLORSBLUE]
                      )
                  ),
                )
            ),
            bodyCreator
          ],
        ),
      ),
    );

  }
}