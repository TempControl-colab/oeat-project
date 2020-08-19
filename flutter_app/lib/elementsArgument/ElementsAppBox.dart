import 'package:flutter/material.dart';
import 'package:flutterapp/blockGestion/DrawerSwitchCase.dart';
import 'package:flutterapp/frontPage/FrontInscription.dart';


class ElementsAppBox{

  ///colors
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
  ///colors

  ///boolean
  static bool _drawerShow =true;
  static final bool _debugShow =false;
  static bool _appBarShow =true;
  static final bool _checkVal = false;
  static final bool _autovalidate = false;

  bool get DRAWERSHOW => _drawerShow;
  bool get DEBUGSHOW => _debugShow;
  bool get APPBARSHOW => _appBarShow;
  bool get CHECKVAL => _checkVal;
  bool get AUTOVALIDATE => _autovalidate;
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
  static final String _name = 'Nom';
  String get NAME => _name;
  static final String _mail = 'Email';
  String get MAIL => _mail;
  static final String _register = 'Inscription';
  String get REGISTER => _register;
  static final String _forgotPassWord = 'Mot de Passe Oublié';
  String get FORGOTPASSWORD => _forgotPassWord;
  static final String _backButton = 'Retour';
  String get BACKBUTTON => _backButton;
  static final String _okButton = 'OK';
  String get OKBUTTON => _okButton;
  static final String _cPassword = 'Confirmer le Mot de Passe';
  String get CPASSWORD => _cPassword;
  static final _address = 'Adresse';
  String get ADDRESS => _address;
  static final _floor = 'Etage';
  String get FLOOR => _floor;
  static final String _elevator = 'Ascenseur';
  String get ELEVATOR => _elevator;
  static final _code = 'Code';
  String get CODE => _code;
  static final _zip = 'CP';
  String get ZIP => _zip;
  static final _city = 'Ville';
  String get CITY => _city;
  static final _door = 'Porte';
  String get DOOR => _door;
  static final String _animal = 'Animaux de Compagnie';
  String get ANIMAL => _animal;
  static final String _validate = 'Valider';
  String get VALIDATE => _validate;
  static final String _validName = 'Entrez un nom valide';
  String get VALIDNAME => _validName;
  static final String _validPhone = 'Entrez un numéro de téléphone correct';
  String get VALIDPHONE => _validPhone;
  static final String _validMail = 'Entrez une adresse mail valide';
  String get VALIDMAIL => _validMail;
  static final String _permissions = "Accepter les conditions générales d'utilisations";
  String get PERMISSIONS => _permissions;
  static final String _yes = "OUI";
  String get YES => _yes;
  static final String _no = "NON";
  String get NO => _no;
  ///Text

  String validateEmail(String value) {
    if (value.length > 0) {
      return value;
    } else {
      print('ta mere');
      return null;
    }
  }

  String validateTESTEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return VALIDMAIL;
    else {
      print('ta mere');
      return null;
    }
  }

///Drawer
  DrawerSwitchCase _DRAWERSWITCHCASE = DrawerSwitchCase();
  get GETDRAWERSWITCHCASE => _DRAWERSWITCHCASE;

  Widget pageTitle(BuildContext context, String text, Color textColor,
      Color shadowColor, Color lineColor) {
    return (
        Container(
          color: Colors.white12,
          width: MediaQuery
              .of(context)
              .size
              .width / 1,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1,
                    child: Text(
                      text.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                      textAlign: TextAlign.center,
                      textScaleFactor: 2.0,
                    ),
                  )
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor.withOpacity(0.6),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: Container(height: 2.5,
                    color: lineColor,
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }


  Widget classicTextField(String text, Color color, TextInputType type, Icon icon, TextEditingController textEditingController, bool obscureText) {
    return (
        TextFormField(
          style: TextStyle(
            color: color,
          ),
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              color: color,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: color,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: color,
              ),
            ),
            prefixIcon: icon,
          ),
          keyboardType: type,
          obscureText: obscureText,
        )
    );
  }

  Widget blueFlatButton(String text) {
    return (
      FlatButton(
        color: Colors.transparent,
        textColor: Colors.lightBlue,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        padding: EdgeInsets.all(0.0),
        splashColor: Colors.blueAccent,
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 12.0),
        ),
      )
    );
  }

}