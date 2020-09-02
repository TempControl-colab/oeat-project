import 'package:flutter/material.dart';
import 'package:flutterapp/blockGestion/DrawerSwitchCase.dart';
import 'package:flutterapp/elementsArgument/StringAppBox.dart';
import 'package:flutterapp/frontPage/FrontInscription.dart';


class ElementsAppBox{

  StringAppBox _STRINGS = StringAppBox();

  String validateEmail(String value) {
    if (value.length > 0) {
      return value;
    } else {
      print('Email empty');
      return null;
    }
  }

  String validateTESTEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return _STRINGS.VALIDMAIL;
    else {
      print('Regex not respected');
      return null;
    }
  }

///Drawer
  DrawerSwitchCase _DRAWERSWITCHCASE = DrawerSwitchCase();
  get GETDRAWERSWITCHCASE => _DRAWERSWITCHCASE;

  Widget pageTitle(BuildContext context, String text, Color textColor, Color shadowColor, Color lineColor) {
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

}