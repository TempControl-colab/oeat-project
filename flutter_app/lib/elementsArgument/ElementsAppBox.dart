import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ElementsAppBox{

  ///colors
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
  static final bool _checkVal = false;
  static final bool _autovalidate = false;

  bool get DRAWERSHOW => _drawerShow;
  bool get DEBUGSHOW => _debugShow;
  bool get APPBARSHOW => _appBarShow;
  bool get CHECKVAL => _checkVal;
  bool get AUTOVALIDATE => _autovalidate;
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
      case 'dawn':
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
  static final String _name = 'Nom';
  String get NAME => _name;
  static final String _mail = 'Email';
  String get MAIL => _mail;
  static final String _password = 'Mot de Passe';
  String get PASSWORD => _password;
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

  String validateName(String value) {
    if (value.length == 0)
      return VALIDNAME;
    else
      return null;
  }

  String validateMobile(String value) {
    if (value.length != 10)
      return VALIDPHONE;
    else
      return null;
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return VALIDMAIL;
    else
      return null;
  }

  ///Widget

  Widget classicTextField(String text, Color color, TextInputType type, Icon icon) {
    return (
        TextFormField(
          style: TextStyle(
            color: color,
          ),
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
        )
    );
  }




  ///Test Code

  Widget cTextField(String text, Color color, TextInputType type, Function method) {
    return (
        TextFormField(
          style: TextStyle(
            color: color,
          ),
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
          ),
          keyboardType: type,
          validator: method,
        )
    );
  }

  Widget obscureTextField(String text, Color color, bool _obscureText) {
    return (
        TextField(
          style: TextStyle(
            color: color,
          ),
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
          ),
          obscureText: _obscureText,
        )
    );
  }

}





class ElementAppState extends StatefulWidget {

  ElementAppState({Key key, String text}) : super(key: key);

  @override
  _ElementAppState createState() => _ElementAppState();
}

class _ElementAppState extends State<ElementAppState>{

  static bool _checkVal = ElementsAppBox().CHECKVAL;

  Widget build(BuildContext context) {
    return Expanded(
      child: SwitchListTile(
        title: Text('',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        value: ElementsAppBox._checkVal,
        onChanged: (bool value) {
          setState(() {
            _checkVal = value;
          });
        },
        activeColor: Colors.lightBlueAccent,
        inactiveThumbColor: Colors.red,
        inactiveTrackColor: Colors.white,
      ),
    );
  }
}