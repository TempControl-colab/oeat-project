import 'package:flutter/material.dart';
import 'package:flutterapp/elementsArgument/AlignAppBox.dart';
import 'package:flutterapp/elementsArgument/BooleanAppBox.dart';
import 'package:flutterapp/elementsArgument/ColorAppBox.dart';

import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';
import 'package:flutterapp/elementsArgument/StringAppBox.dart';
import 'package:flutterapp/style/StyleApp.dart';


class GeneralStructure{

  AlignAppBox _ALIGNS = new AlignAppBox();
  ElementsAppBox _ELEMENTS = new ElementsAppBox();
  BooleanAppBox _BOOLEANS = new BooleanAppBox();
  ColorAppBox _COLORS = new ColorAppBox();
  StringAppBox _STRINGS = new StringAppBox();
  StyleFullOfApp _STYLEFULL = new StyleFullOfApp();






  MaterialApp myMaterialAppFonction(StatefulWidget home){

    return MaterialApp(
      title: _STRINGS.TITLE,
      theme: _STYLEFULL.themeDataValue(),
      debugShowCheckedModeBanner: _BOOLEANS.DEBUGSHOW,
      home: home,
    );

  }







  Widget myBodyBuild(BuildContext context,Widget body){

    return Scaffold(
      appBar: _BOOLEANS.APPBARSHOW == true ? _STYLEFULL.myAppBar(context):null,
      drawer: _BOOLEANS.DRAWERSHOW == true ? _STYLEFULL.myDrawer(context, _ELEMENTS.GETDRAWERSWITCHCASE):null,
      body: Center(
        child: Stack(
          children: [
            Center(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: _ALIGNS.WhatAlignementStart('up'),
                          end: _ALIGNS.WhatAlignementEnd('down'),
                          colors: [_COLORS.clGrey800,_COLORS.clBlack]
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