import 'package:flutter/material.dart';
import 'package:flutterapp/blockGestion/DrawerSwitchCase.dart';


class ElementsAppBox{

  ///colors
  static final Color _textFieldColor = Colors.white;
  static final MaterialColor _clb = Colors.blue;
  static final Color _clr = Colors.redAccent;
  static final Color _clgr = Color.fromRGBO(16, 17, 16,1);

  static final Color  _clBlack = Colors.black;
  static final Color  _clGrey800 = Colors.grey[800];

  Color get clgr => _clgr;
  Color get clBlack => _clBlack;
  Color get clGrey800 => _clGrey800;

  Color get CLB => _clb;
  Color get CLR => _clr;
  ///colors

  ///boolean
  static bool _drawerShow =true;
  static final bool _debugShow =false;
  static bool _appBarShow =true;

  bool get DRAWERSHOW => _drawerShow;
  bool get DEBUGSHOW => _debugShow;
  bool get APPBARSHOW => _appBarShow;
  ///boolean


  ///Alignment

  static final Alignment _alignmentStart = Alignment.bottomRight;

  static final Alignment _alignmentEnd = Alignment.topLeft;

  Alignment WhatAlignementStart(String what){
    switch(what){
      case 'up':
        return Alignment.topCenter;
        break;
      case 'left':
        return Alignment.topLeft;
        break;
      case 'right':
        return Alignment.topRight;
        break;
    }
  }

  Alignment WhatAlignementEnd(String what){
    switch(what){
      case 'down':
        return Alignment.bottomCenter;
        break;
      case 'left':
        return Alignment.bottomLeft;
        break;
      case 'right':
        return Alignment.bottomRight;
        break;
    }
  }
  ///Alignment
  ///Text

  static final String _title = 'My Application';
  String get TITLE => _title;
  static final String _mailAdress = 'Adresse Mail';
  String get MAILADRESS => _mailAdress;
  static final String _passWord = 'Mot de Passe';
  String get PASSWORD => _passWord;
  static final String _connexion = 'CONNEXION';
  String get CONNEXION => _connexion;
  static final String _register = 'Inscription';
  String get REGISTER => _register;
  static final String _forgotPassWord = 'Mot de Passe Oublié';
  String get FORGOTPASSWORD => _forgotPassWord;
  static final String _backButton = 'Retour';
  String get BACKBUTTON => _backButton;
  static final String _okButton = 'OK';
  String get OKBUTTON => _okButton;
  ///Text
///Drawer
  DrawerSwitchCase _DRAWERSWITCHCASE = DrawerSwitchCase();
  get GETDRAWERSWITCHCASE => _DRAWERSWITCHCASE;


  Widget whiteTextField(String text) {
    return (
      TextField(
        style: TextStyle(
          color: _textFieldColor,
        ),
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            color: _textFieldColor,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: _textFieldColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: _textFieldColor,
            ),
          ),
        ),
      )
    );
  }

}