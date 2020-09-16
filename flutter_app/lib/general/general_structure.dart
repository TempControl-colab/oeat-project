import 'package:flutter/material.dart';
import 'package:flutterapp/elementsArgument/AlignAppBox.dart';
import 'package:flutterapp/elementsArgument/BooleanAppBox.dart';
import 'package:flutterapp/elementsArgument/ColorAppBox.dart';

import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';
import 'package:flutterapp/elementsArgument/StringAppBox.dart';
import 'package:flutterapp/style/StyleApp.dart';


class GeneralStructure{

  ElementsAppBox _ELEMENTSARG = new ElementsAppBox();
  StringAppBox _STRINGAPPBOX = new StringAppBox();
  BooleanAppBox _BOOLEANAPPBOX = new BooleanAppBox();
  AlignAppBox _ALIGNAPPBOX = new AlignAppBox();
  ColorAppBox _COLORAPPBOX = new ColorAppBox();

  StyleFullOfApp _STYLEFULL = new StyleFullOfApp();






  MaterialApp myMaterialAppFonction(StatefulWidget home){

    return MaterialApp(
      title: _STRINGAPPBOX.TITLE,
      theme: _STYLEFULL.themeDataValue(),
      debugShowCheckedModeBanner: _BOOLEANAPPBOX.DEBUGSHOW,
      home: home,
    );

  }

  Widget myBodyBuild(BuildContext context,Widget body){

    return Scaffold(
      appBar: _BOOLEANAPPBOX.APPBARSHOW == true ? _STYLEFULL.myAppBar(context):null,
      drawer: _BOOLEANAPPBOX.DRAWERSHOW == true ? _STYLEFULL.myDrawer(context):null,
      body: Center(
        child: Stack(
          children: [
            Center(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: _ALIGNAPPBOX.WhatAlignementStart('up'),
                          end: _ALIGNAPPBOX.WhatAlignementEnd('dawn'),
                          colors: [_COLORAPPBOX.clGrey800,_COLORAPPBOX.clBlack]
                      )
                  ),
                )
            ),
            body
          ],
        ),
      ),
    );

  }
}