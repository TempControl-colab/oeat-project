import 'package:flutter/material.dart';

import 'package:flutterapp/elementsArgument/ElementsAppBox.dart';
import 'package:flutterapp/style/StyleApp.dart';


class GeneralStructure{

  ElementsAppBox _ELEMENTSARG = new ElementsAppBox();
  StyleFullOfApp _STYLEFULL = new StyleFullOfApp();






  MaterialApp myMaterialAppFonction(StatefulWidget home){

    return MaterialApp(
      title: _ELEMENTSARG.TITLE,
      theme: _STYLEFULL.themeDataValue(),
      debugShowCheckedModeBanner: _ELEMENTSARG.DEBUGSHOW,
      home: home,
    );

  }







  Widget myBodyBuild(BuildContext context,Widget body){

    return Scaffold(
      appBar: _ELEMENTSARG.APPBARSHOW == true ? _STYLEFULL.myAppBar(context):null,
      drawer: _ELEMENTSARG.DRAWERSHOW == true ? _STYLEFULL.myDrawer(context, _ELEMENTSARG.GETDRAWERSWITCHCASE):null,
      body: Center(
        child: Stack(
          children: [
            Center(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: _ELEMENTSARG.WhatAlignementStart('up'),
                          end: _ELEMENTSARG.WhatAlignementEnd('down'),
                          colors: [_ELEMENTSARG.clGrey800,_ELEMENTSARG.clBlack]
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