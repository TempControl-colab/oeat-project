import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/elementsArgument/BorderAppBox.dart';
import 'package:flutterapp/elementsArgument/ColorAppBox.dart';
import 'package:flutterapp/frontPage/FrontConnect.dart';
import 'package:flutterapp/frontPage/FrontInscription.dart';

class FrontHome{

  BorderAppBox _BORDERS = BorderAppBox();
  ColorAppBox _COLORS = ColorAppBox();
  FrontInscription _FRONTINSC = FrontInscription();

  Widget FrontH(BuildContext context){
    return _BORDERS.roundedBorder(context, Colors.deepPurple, 25, _FRONTINSC);
  }
  

}