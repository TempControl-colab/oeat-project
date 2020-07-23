import 'package:flutter/material.dart';


class Elements{

  ///colors
  static final MaterialColor _colorblue = Colors.blue;
  static final Color _colorred = Colors.redAccent;

  MaterialColor get COLORSBLUE => _colorblue;
  Color get COLORSRED => _colorred;
  ///colors

  ///boolean
  static bool _drawerShow =false;
  static final bool _debugShow =false;
  static bool _appBarShow =false;

  bool get DRAWERSHOW => _drawerShow;
  bool get DEBUGSHOW => _debugShow;
  bool get APPBARSHOW => _appBarShow;
  ///boolean


  ///Alignment
  static final Alignment _alignmentStart = Alignment.bottomRight;
  static final Alignment _alignmentEnd = Alignment.topLeft;

  Alignment get ALIGNEMENTSTART => _alignmentStart;
  Alignment get ALIGNEMENTEND => _alignmentEnd;
  ///Alignment





}