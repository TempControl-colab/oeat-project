import 'dart:ui';

import 'package:flutter/material.dart';

class ColorAppBox {


  static final Color _textFieldColor = Colors.white;
  static final MaterialColor _clb = Colors.blue;
  static final Color _clr = Colors.redAccent;
  static final Color _clgr = Color.fromRGBO(16, 17, 16,1);

  static final Color  _clBlack = Colors.black;
  static final Color  _clGrey800 = Colors.grey[800];

  Color get defaultTextFieldColor => _textFieldColor;
  Color get clgr => _clgr;
  Color get clBlack => _clBlack;
  Color get clGrey800 => _clGrey800;

  Color get CLB => _clb;
  Color get CLR => _clr;
}